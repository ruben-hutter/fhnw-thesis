# FHNW Thesis Template for Typst

A modern thesis template for the **University of Applied Sciences and Arts
Northwestern Switzerland (FHNW)**, built with [Typst](https://typst.app).

The template provides a clean, FHNW-branded layout out of the box and handles
title page, abstract, acknowledgments, table of contents, chapters,
bibliography, and appendices automatically.

## Features

- **FHNW branding**: official FHNW colors, logo, and typography
- **Complete document structure**: title page, front matter, chapters, back matter
- **Chapter openers**: large numbered chapter pages with a yellow accent line
- **Custom environments**: definitions, theorems, and algorithms
- **Draft mode**: built-in TODO markers for work-in-progress drafts
- **Citations & bibliography**: BibTeX integration with configurable styles
- **Multi-language**: English (default) and German label sets
- **Flexible typography**: full control over fonts, sizes, and weights
- **Fast compilation**: near-instant preview updates

## Quick Start

### Use as a Typst package (once published)

```typst
#import "@preview/fhnw-thesis:0.1.0": *

#show: thesis.with(
  title: "Your Thesis Title",
  author: "Your Name",
  thesis-type: "Bachelor Thesis",
  supervisor: "Prof. Dr. Jane Doe",
  expert: "Prof. Dr. John Smith",

  abstract: [
    Your abstract here...
  ],

  chapters: (
    include "introduction.typ",
    include "methodology.typ",
    include "conclusion.typ",
  ),

  bibliography-content: bibliography("references.bib"),
)
```

### From this repository (GitHub template)

1. Click **"Use this template"** at the top of this repository.
2. Create a new repository with your desired name.
3. Clone it locally.
4. Compile with `typst compile src/template/thesis.typ`.

### Initialize locally

```bash
typst init @preview/fhnw-thesis:0.1.0
```

## Configuration

### Metadata

```typst
#show: thesis.with(
  title: "Your Title",                       // Required
  subtitle: none,                            // Optional subtitle
  author: "Your Name",
  email: "your.email@students.fhnw.ch",
  student-id: "XX-XXX-XXX",
  supervisor: "Prof. Dr. Jane Doe",          // Betreuender Dozent
  expert: "Prof. Dr. John Smith",            // Experte
  thesis-type: "Bachelor Thesis",            // or "Master Thesis", etc.
  school: "School of Computer Science",       // Hochschule für Informatik
  institute: "Institute of Mobile and Distributed Systems",
  location: "Brugg-Windisch, Switzerland",
  date: datetime.today(),
  language: "en",                            // "en" or "de"
)
```

### Typography

```typst
#show: thesis.with(
  body-font: ("Roboto", "Liberation Sans"),
  sans-font: ("Roboto", "Liberation Sans"),
  mono-font: ("Source Code Pro", "Liberation Mono"),
  body-size: 11pt,
  chapter-title-size: 24pt,
  // ...and more
)
```

### Compilation Modes

- `draft: true` (default) -- renders TODO markers and a draft badge
- `colored: true` (default) -- uses FHNW colors for environments

## Draft TODO Markers

Available in draft mode:

```typst
#todo[General TODO]
#todo-missing[Missing content]
#todo-check[Needs verification]
#todo-revise[Needs revision]
#todo-citation[Add citation]
#todo-language[Check language]
#todo-question[Open question]
#todo-note[Note to self]
```

## Custom Environments

```typst
#definition(title: "Definition 1")[ ... ]
#theorem(title: "Theorem 1")[ ... ]
#algorithm(caption: [Binary search])[ ... ]
```

Use `#important[text]` to highlight crucial information.

## FHNW Colors

The template exposes the official FHNW palette for use in your content:

```typst
#text(fill: fhnw-yellow)[ ... ]
#text(fill: fhnw-dark-gray)[ ... ]
#text(fill: fhnw-teal)[ ... ]
#text(fill: fhnw-red)[ ... ]
```

| Color            | Hex       |
| ---------------- | --------- |
| `fhnw-yellow`    | `#fde70e` |
| `fhnw-dark-gray` | `#2d373c` |
| `fhnw-gray`      | `#8c9196` |
| `fhnw-red`       | `#d20537` |
| `fhnw-teal`      | `#006e6e` |

## Repository Layout

```
fhnw-thesis/
├── typst.toml                 # Package + template manifest
├── src/
│   ├── lib.typ                # Utilities (colors, TODOs, environments)
│   ├── main.typ               # thesis() show function
│   ├── assets/                # FHNW + swissuniversities logos
│   └── template/              # Scaffold copied on `typst init`
│       ├── thesis.typ         # Your entrypoint (edit this!)
│       ├── references.bib
│       ├── content/           # Chapter files
│       └── img/               # Sample figures
└── docs/                      # Manual + thumbnail sources
```

**What to modify:**

- `src/template/thesis.typ` -- your metadata and chapter list
- `src/template/content/` -- your chapter content
- `src/template/references.bib` -- your bibliography

## Requirements

- Typst 0.13.0 or newer
- Roboto font (optional, for body text)
- Source Code Pro font (optional, for code blocks)

## Credits

- FHNW for the official branding and colors
- Inspired by the [dmi-basilea-thesis](https://typst.app/universe/package/dmi-basilea-thesis/) template

## License

MIT
