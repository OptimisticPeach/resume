#import "fontawesome.typ": *

#let colour_1 = rgb(0, 110, 140)
#let colour_2 = rgb(120, 0, 120)

#let icon(name) = {
  text(fill: colour_2, fa(name))
}

#let resume(name, gh, email, tel, body) = {
  set document(author: name, title: name)
  set page(
    margin: (left: 15mm, right: 15mm, top: 15mm, bottom: 15mm),
    number-align: center,
  )
  set text(font: "New Computer Modern", lang: "en")
  show math.equation: set text(weight: 400)

  // Title row.
  align(center)[
    #block(text(weight: 600, 2.5em, name))
  ]

  // Links
  show link: x => text(
    colour_2,
    underline(
      stroke: 1pt + colour_1, 
      x
    )
  )

  align(center)[
    *
    #icon(github) #link(gh.at(0), gh.at(1)) | 
    #icon(envelope) #link(email.at(0), email.at(1)) | 
    #icon(phone) #link(tel.at(0), tel.at(1))
    *
  ]

  // Headings
  show heading: x => block(
    width: 100%,
    stroke: (bottom: 1pt + colour_1),
    pad(bottom: 5pt, text(fill: colour_1, x))
  )

  // Main body.
  set par(justify: true)

  body
}

#let project(name: "", url: "", date: "", subtitle: "", technologies: (), body) = {
  pad(
    left: 3pt,
    right: 3pt,
    top: 3pt,
    [
      #grid(
        columns: 2,
        rows: if subtitle == "" { 1 } else { 2 } + if technologies == () { 0 } else { 1 },
        row-gutter: 0.75em,
        [
          #if url == "" [
            #name
          ] else [
            #link(url, name)
          ]
          #h(100%)
        ],
        date,
        ..if subtitle == "" {
          ()
        } else { 
          (
            text(
              subtitle,
              fill: silver.darken(70%)
            ),
          ) 
        },
        ..if technologies == () {
          ()
        } else {
          (
            technologies.map(x => [*#x*]).join([, ], last: [, and ]),
          )
        }
      )
      #body
    ]
  )
}

#let bulleted(..items) = {
  pad(
    left: 10pt,
    list(
      marker: text(
        fill: colour_1,
        size: 12pt,
        sym.circle.filled
      ),
      ..items
    )
  )
}

#let skillset(name, skills) = {
  text(
    fill: colour_1,
    [_#name _]
  )
  h(0.5em)
  [*#skills*]
}
