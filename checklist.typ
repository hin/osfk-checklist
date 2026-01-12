#let checkline(item, check) = {
  item
  box(width: 1fr, repeat[.~])
  check
  linebreak()
}

#let check(item, check, important: false) = {
  if important {
    highlight(
      checkline(item, check)
    )
  } else {
    checkline(item, check)
  }
}

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
  v(1mm)
}

#let frame(side_title: "", thickness: 1mm, width: 92mm, height: 100mm, content) = {
  block(
    stroke: black + thickness,
    radius: 2mm,
    clip: true,
    width: width,
    grid(
      columns: (8mm, width - 8mm),
      rows: height,
      fill: (x, y) =>
        if x == 0 { gray } else { white },
      inset: 0mm,

      rotate(
        -90deg,
        reflow: true,
        block(
          inset: 2mm,
          title(side_title)
        )
      ),
      content
    )
  )
}
