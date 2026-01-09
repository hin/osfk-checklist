#set page(
  width: 100mm,
  height: 290mm,
  margin: (x: 2mm, y: 2mm)
)

#set text(
  font: "Lato",
  size: 10pt
)

#set block(
  spacing: 1mm,
)

#show "dots": name => box[#box[width: 1fr, #repeat[.]]]

#let check(item, check) = {
  item
  box(width: 1fr, repeat[.])
  check
}

#let section(color, heading, checks) = {
  block(
    fill: color,
    inset: 1mm,
    width: 100%,
    heading
  )
  block(
    inset: 1mm,
    checks
  )
}

#block(
  stroke: black,
  radius: 2mm,
  clip: true,
  grid(
    columns: (7mm, 1fr),
    rows: 1,
    fill: (x, y) =>
      if x == 0 { gray } else { white },
    stroke: black,

    rotate(
      -90deg,
      reflow: true,
      block(
        inset: 1mm,
        title([Checklista EVSS SE-MMB/SE-MMC])
      )
    ),
    [
      #section(yellow, [= Före uppsittning], 
        [
        + #check([Daglig tillsyn / walk around],[UTFÖRD])
        + #check([Resedagbok \ (Vita-, gula-, rosa sidor, servicelogg)],
          [OK FLYGA?])
        + #check([Flytväst, hörlurar, kartor, sittdyna, \ pedaler, säkerhetsbälte],
          [OK FLYGA?])
        ]
      )
    ]
  )
)



