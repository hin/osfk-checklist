#let dots = box(width: 1fr, repeat[.~])

#let section(color, heading, checks) = {
  block(
    fill: color,
    inset: 1mm,
    width: 100%,
    [= #heading]
  )
  block(
    inset: 1mm,
    checks
  )
}

#let frame(
  side_title: "Side Title",
  width: 100mm,
  height: 290mm,
  stroke: black + 0.5mm,
  content
) = {
  page(
    width: width+2mm,
    height: height+2mm,
    margin: 1mm,
    block(
      stroke: stroke,
      radius: 2mm,
      height: height - stroke.thickness,
      width: width - stroke.thickness,
      clip: true,
      grid(
        columns: (8mm, 100%-8mm),
        rows: 100%,
        rotate(
          -90deg,
          reflow: true,
          block(
            inset: 2mm,
            width: 100%,
            fill: gray,
            [
              #set align(right)
              #set align(horizon)
              #title(side_title)
            ]
          ),
        ),
        content
      )
    )
  )
}
