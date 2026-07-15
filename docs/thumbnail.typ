#import "../src/main.typ": *

// Renders just the FHNW-branded title page; the first page is used as the
// package thumbnail (see the `doc` recipe in the Justfile).
#show: thesis.with(
  draft: false,
  colored: true,
  title: "FHNW Thesis Template",
  subtitle: "A modern Typst template for FHNW",
  author: "Your Name",
  email: "your.email@students.fhnw.ch",
  thesis-type: "Bachelor Thesis",
  school: "School of Engineering",
  institute: "Institute of Computer Science",
  supervisor: "Prof. Dr. Jane Doe",
  expert: "Prof. Dr. John Smith",
  abstract: [],
  chapters: (),
  bibliography-content: none,
)
