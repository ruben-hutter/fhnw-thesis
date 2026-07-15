root := justfile_directory()

export TYPST_ROOT := root

[private]
default:
  @just --list --unsorted

# compile the example thesis to PDF
build:
  typst compile src/template/thesis.typ src/template/thesis.pdf

# compile and keep recompiling on changes
watch:
  typst watch src/template/thesis.typ src/template/thesis.pdf

# open the compiled thesis PDF (Linux/macOS)
preview: build
  @open src/template/thesis.pdf 2>/dev/null || xdg-open src/template/thesis.pdf 2>/dev/null || true

# generate the manual and thumbnail
doc:
  typst compile docs/manual.typ docs/manual.pdf
  typst compile docs/thumbnail.typ src/assets/thumbnail.png --ppi 144 --pages 1

# verify the template compiles without errors
test:
  typst compile src/template/thesis.typ /tmp/fhnw-thesis-test.pdf

# package the library into the specified destination folder
package target:
  ./scripts/package "{{target}}"

# install the library with the "@local" prefix
install: (package "@local")

[private]
remove target:
  ./scripts/uninstall "{{target}}"

# uninstalls the library from the "@local" prefix
uninstall: (remove "@local")

# clean generated artifacts
clean:
  rm -f src/template/thesis.pdf docs/manual.pdf src/assets/thumbnail.png
