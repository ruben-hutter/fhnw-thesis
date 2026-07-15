#import "../src/main.typ": *

#set text(font: ("Roboto", "Liberation Sans"))

#align(center)[
  #text(size: 28pt, weight: "bold", fill: fhnw-dark-gray)[FHNW Thesis Template]
  #v(0.4em)
  #text(size: 14pt, fill: fhnw-gray)[Manual]
]

#v(1.5em)
#line(length: 40%, stroke: 2pt + fhnw-yellow)
#v(1.5em)

= Overview

The FHNW thesis template provides a complete, FHNW-branded document structure
for Bachelor, Master, and project theses written with Typst. It handles the
title page, abstract, acknowledgments, table of contents, chapters,
bibliography, and appendices automatically.

= Usage

Pass your configuration and content to the `thesis` function via a show rule:

```typst
#import "@preview/fhnw-thesis:0.1.0": *

#show: thesis.with(
  title: "Your Thesis Title",
  author: "Your Name",
  thesis-type: "Bachelor Thesis",
  supervisor: "Prof. Dr. Jane Doe",
  expert: "Prof. Dr. John Smith",
  abstract: [ ... ],
  chapters: (
    include "introduction.typ",
    include "conclusion.typ",
  ),
  bibliography-content: bibliography("references.bib"),
)
```

= Environments

The template ships custom environments for academic writing:

- `#definition(title: "...")[ ... ]` -- teal-accented definition box
- `#theorem(title: "...")[ ... ]` -- dark-gray-accented theorem box
- `#algorithm(caption: [ ... ])[ ... ]` -- bordered algorithm figure
- `#important[text]` -- highlighted text

= Draft Mode

While writing, enable `draft: true` to render TODO markers:

#todo[Remember to revisit this section.]
#todo-citation[Add a reference here.]

Set `draft: false` for the final version to hide all markers and the draft badge.

= Colors

The official FHNW palette is available as content colors: `fhnw-yellow`,
`fhnw-dark-gray`, `fhnw-gray`, `fhnw-red`, `fhnw-teal`.
