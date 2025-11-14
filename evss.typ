#set page(
  width: 120mm,
  height: 290mm
)

#import "@preview/showybox:2.0.4": showybox

#show "dots": name => box[#box[width: 1fr, #repeat[.]]]

#let check(item, check) = {
  item
  box(width: 1fr, repeat[.])
  check
}

#showybox(
  title: "Checklista EVSS SE-MMB/SE-MMC",
  [Före uppsittning],
  [
    + #check([Daglig tillsyn / walk around],[UTFÖRD]) \
      mera *detaljer* här
    + #check([Resedagbok \ (Vita-, gula-, rosa sidor, servicelogg)],
      [OK FLYGA?])
    + #check([Flytväst, hörlurar, kartor, \ sittdyna, pedaler, säkerhetsbälte],
      [OK FLYGA?])
  ],
  [foobar],
  [tratt],
  [mule]
)


