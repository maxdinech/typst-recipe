#let primary_colour = rgb("#ce1f36")
#let text_colour = rgb("#333")

#let note(note) = {
  (NOTE: "NOTESTART" + note + "NOTEEND")
}

#let recipes(title, doc) = {
  set text(10pt, font: "IBM")
  set page(
    margin: (x: 54pt, y: 52pt),
    numbering: "1",
    number-align: right,
  )

  set align(center)
  v(240pt)
  text(fill: primary_colour, font: "Salzburg-Serial", size: 30pt, weight: 100, title)
  set align(left)

  show heading.where(
    level: 1
  ): it => [
    #pagebreak()
    #v(300pt)
    #set align(center)
    #text(
      fill: primary_colour,
      font: "IBM Plex Sans",
      weight: 300,
      size: 20pt,
      {it.body},
    )
    #text(" ")
    #pagebreak()
  ]
  doc
}

#let display_with_footnotes(lines, footnotes_counter) = {
  for line in lines.children {
    if "NOTE" not in repr(line) {
      line
    } else {
      let x = line.body.children.map(it => {
        if "NOTE" not in repr(it) {
          it
        } else {
          footnotes_counter.step()
          super(typographic: true, size: 7pt, footnotes_counter.display())
        }
      }).join()
      if "listitem" in repr(line) { [- #x] } else { [#x] }
    }
  }
}

#let display_steps_with_footnotes(lines, footnotes_counter) = {
  for line in lines.children {
    if "NOTE" not in repr(line) {
      line
    } else {
      footnotes_counter.step()
      super(typographic: true, size: 7pt, footnotes_counter.display())
    }
  }
}

#let display_ingredients(ingredients, footnotes_counter) = {
  emph(display_with_footnotes(ingredients, footnotes_counter))
}

#let display_cookware(cookware, footnotes_counter) = {
  emph(display_with_footnotes(cookware, footnotes_counter))
}

#let display_steps(steps, footnotes_counter) = {
  [== Préparation]
  set enum(tight: true)
  columns(
    2,
    gutter: 11pt,
    display_steps_with_footnotes(steps, footnotes_counter)
  )
}

#let display_footnotes(ingredients, cookware, steps, footnotes_counter) = {
  let aux() = {
    for lines in (ingredients, cookware, steps) {
      for line in lines.children {
        if "NOTE" not in repr(line) {
        } else {
          if line.has("body") {
            line.body.children.map(it => {
              if "NOTE" in repr(it) [
                + _#h(-2pt) #it.text.split("NOTESTART").at(1).split("NOTEEND").at(0)_
              ]
            }).join()
          } else [
            + _#line.text.split("NOTESTART").at(1).split("NOTEEND").at(0)_
          ]
        }
      }
    }
  }

  let footnotes = aux()
  footnotes
}

}

#let display_pairings(pairings) = {
  [== Suggestions d'accords]
  emph(pairings)
}

#let recipe(
  title: "",
  author: "",
  description: "",
  image_path: "",
  servings: 6,
  prep_time: "",
  bake_time: "",
  difficulty: "normale",
  ingredients: (),
  cookware: [],
  steps: [],
  remarks: [],
  pairings: [],
) = {
  show heading.where(
    level: 2
  ): it => text(
      fill: primary_colour,
      font: "IBM Plex Sans",
      weight: 300,
      size: 11pt,
    grid(
        columns: (auto, auto),
        column-gutter: 5pt,
        [#{upper(it.body)}],
        [
          #v(5pt)
          #line(length: 100%, stroke: 0.4pt + primary_colour)
        ]
      )
  )

  let footnotes_counter = counter(repr(title))

  {
    grid(
      columns: (380pt, 100pt),
      [
        #text(fill: primary_colour, font: "Salzburg-Serial", size: 18pt, weight: 100, upper(title))
        #h(3pt)
        #text(fill: text_colour, font: "Alex Brush", size: 20pt, author)
        #v(0pt)
        #emph(description)
      ],
      [
        #v(2pt)
        #set align(right)
        #if(prep_time != "") {
          [_Préparation: #prep_time _]
        }
        #if(bake_time != "") {
          [\ _Cuisson: #bake_time _]
        }
        /*
        #if(difficulty != "") {
          [\ _Difficulté: #difficulty _]
        }
        */
      ],
    )

    grid(
      columns: (90pt, 380pt),
      column-gutter: 15pt,
      [
        #set list(marker: [], body-indent: 0pt)
        #set align(right)
        #text(fill: primary_colour, font: "IBM Plex Sans", weight: 300, size:11pt, upper([Ingrédients\ ]))
        #emph([pour #servings personnes])

        #display_ingredients(ingredients, footnotes_counter)

        #if cookware != [] {
            text(fill: primary_colour, font: "IBM Plex Sans", weight: 300, size:11pt, upper([Matériel\ ]))
            display_cookware(cookware, footnotes_counter)
        }
      ],
      [    
        #display_steps(steps, footnotes_counter)
        #if remarks != [] or footnotes_counter.display() != [1] {
          [== Conseils du chef]
          footnotes_counter.update(1)
          emph(remarks)
          display_footnotes(ingredients, cookware, steps, footnotes_counter)
        }
        #if pairings != [] {
          display_pairings(pairings)
        }
      ]
    )
    v(30pt)
  }
}
