#let version = [utkast-2026-01-12a]
#let side_title = [SE-MMB / SE-MMC]

#let h = 250mm

#let cground = lime.transparentize(40%)
#let cair = aqua.transparentize(40%)

#set page(
  width: 100mm,
  height: 280mm,
  margin: (x: 2mm, y: 2mm)
)

#set text(
  font: "Lato",
  size: 10pt
)

#set block(
  spacing: 0mm
)

#set par(
  leading: 0.4em,
)

#let checkline(item, check) = {
  item
  box(width: 1fr, repeat[~.~])
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
    heading
  )
  block(
    inset: 1mm,
    checks
  )
  v(1mm)
}

#block(
  stroke: black,
  radius: 2mm,
  clip: true,
  grid(
    columns: (8mm, 1fr),
    rows: h,
    fill: (x, y) =>
      if x == 0 { gray } else { white },
    //stroke: black,
    inset: 0mm,

    rotate(
      -90deg,
      reflow: true,
      block(
        inset: 2mm,
        title(side_title)
      )
    ),

    [

      #grid(
        columns: 2,
        box(inset: 1mm,
          image("images/osfk-logo.svg", height: 15mm)
        ),
        box(inset: 2mm,[
          #set text(size: 12pt)
          #set align(center)
          #set align(horizon)
          //UTKAST \
          Evektor Sportstar \
          #set text(size: 9pt)
          Version: #version \
          http://github.com/hin/typst-checklist
        ])

      )

      #section(yellow, [= Före uppsittning], 
        [
          + #check([Daglig tillsyn / walk around],[UTFÖRD])
          + #check([Resedagbok \ (Vita-, gula-, rosa sidor, servicelogg)],
            highlight[OK FLYGA?])
          + #check([Flytväst, hörlurar, kartor, sittdyna, \ pedaler, säkerhetsbälte],
            highlight[OK FLYGA?])
        ]
      )
      #section(cground, [= Före motorstart],
        [
          + #check([PARKING BRAKES], [OFF])
          + #check([FOOT BRAKES], [IN])
          + #check([Circuit brakers], [CHECK])
          + #check([Elförbrukare], [OFF])
          + #check([MASTER SWITCH], [ON])
          + #check([Roder kontroll], [FULLA UTSLAG])
          + #check([Klaff kontroll], [0-T/O-L1-L2-0])
          + #check([Tacho + Hobbs], [Notera])
          + #check([Propellerfält], [FRITT/dragstång?])
          + #check([Huv], [STÄNGD/LÅST])
        ]
      )

      #section(cground, [= Motorstart],
        [
          + #check([BEACON], [ON])
          + #check([Bränslekran], [LEFT])
          + #check([FUEL PUMP – pressure – FUEL PUMP], [ON-0.15-OFF])
          + #check([CHOKE (vid behov)], [UT])
          + #check([THROTTLE], [TOMGÅNG])
          + #check([KEY], [STARTA])
          + #check([Oljetryck], [≥2 bar inom 10 sek], important: true)
          + #check([CHOKE], [IN])
          + #check([Övriga motorvärden], [KONTROLL])
          + #check([GEN + AUX GEN], [CHARGE])
          + #check([AVIONICS SWITCH + IC / XPDR], [ON / STBY])
          + #check([Värmning], [2300 r/min])
          + #check([Höjdmätare], [QFE, QNH?])
        ]
      )
      #section(cground, [= Motoruppkörning/Run-up area],
        [
          + #check([TRIM], [NEUTRAL])
          + #check([Klaff], [FLAPS T/O])
          + #check([Bränslekran], [RIGHT])
          + #check([FUEL PUMP], [ON])
          + #check([LDT LIGHT], [ON])
          + #check([SOCKET], [OFF])
          + #check([Oljetemp], [min 50°C], important: true)
          + #check([4000 r/min MAGNETOS L + R], highlight[< 120 r/min])
          + #check([4000 r/min CARB HEAT], [CHECK])
          + #check([Bränslekran], [Lämplig])
          + #check([Nödchecklista + TEM], [REPETERA])
        ]
      )

      #section(cground, [= På rullbanan],
        [
          + #check([XPDR], [ALT])
          + #check([Avdragspunkt], [FASTSTÄLL])
        ]
      )

      #line(length: 100%)
      #block(
        height: 1fr,
        width: 100%,
        [
          #set align(center)
          #set align(horizon)
          #set text(size: 11pt)
          Blå - i luften - utantill \
          Grön - på marken - läs och gör
        ]
      )

    ]
  )
)

#block(
  stroke: black,
  radius: 2mm,
  clip: true,
  grid(
    columns: (8mm, 1fr),
    rows: h,
    fill: (x, y) =>
      if x == 0 { gray } else { white },

    rotate(
      -90deg,
      reflow: true,
      block(
        inset: 2mm,
        title(side_title)
      )
    ),
    [

      #section(cair, [= Planflykt/På marschhöjd],
        [
          + #check([Marscheffekt], [4800-5500 r/min])
          + #check([FUEL PUMP], [OFF])
          + #check([LAND /light], [OFF])
          + #check([SOCKET], [O/R])
          + #check([Motorinstrument], [GRÖNA VÄRDEN])
        ]
      )

      #section(cair, [= Före landning], 
        [
          + #check([Säkerhetsbälten], [JUSTERA/PAX])
          + #check([Bränslemängd], [KONTROLL])
          + #check([Bränslekran], [BÄSTA TANK])
          + #check([SOCKET], [OFF])
          + #check([FUEL PUMP], [ON])
          + #check([LDT LIGHT], [ON])
          + #check([CARB], [HEAT])
        ]
      )

      #section(cair, [= Landningsvarv], 
        [
          + #check([Medvind: FLAPS T/O (inom vit båge)], [≤ 70 kt])
          + #check([Pådragspunkt], [FASTSTÄLL])
          + #check([Bas: FLAPS L1], [65 kt])
          + #check([Final: FLAPS L1/L2:], [60 kt])
          + #check([Kort final: CARB HEAT], [IN])
        ]
      )

      #section(cground, [= Efter landning], 
        [
          + #check([Klaff], [FLAPS 0])
          + #check([FUEL PUMP + LDT LIGHT / XPDR], [OFF / STBY])
        ]
      )

      #section(cground, [= Parkering / Shut down], 
        [
          + #check([AVIONICS + Elförbrukare utom BEACON], [OFF])
          + #check([GEN + AUX GEN], [OFF])
          + #check([KEY], [STOP + OUT/krok])
          + #check([BEACON], [OFF])
          + #check([MASTER SWITCH notera Tacho + Hobbs], [OFF])
          + #check([Bränslekran], [OFF])
          + #check([PARKING BRAKES], [OFF?])
          + #check([Färdplan], [Avsluta?], important: true)
            Resedagbok, hangarera/förtöj, kapell, pitotskydd
        ]
      )
      #block(
        inset: 1mm,
        block(
          stroke: red + 1mm,
          section(red.transparentize(50%), [= Nödchecklista SE-MMB / SE-MMC], 
            [
              Motorstörning/-bortfall i luften
              + #check([Fart], [59 kt], important: true)
                #highlight[
                  Flyg flygplanet \
                  Fält - välj
                ]
              + #check([FUEL PUMP], [ON])
              + #check([Bränslekran], [BÄSTA TANK])
              + #check([CARB HEAT], [UT])
              + #check([CHOKE], [IN])
              + #check([THROTTLE], [TOMGÅNG])
              + #check([MAGNETOS L + R], [BÄSTA KRETS])
              + #check([Återstart (om stannat)], [STARTFÖRSÖK])
              + #check([Säkerhetsbälte], [DRA ÅT/INFO PAX])
              + #check([Nödmeddelande], [ATC/121.500])
              + #check([Transponder], [7700])
              + #check([Nödsändare PLB + ELT], [ON])
            ]
          )

        )
      )

      //#line(length: 100%)
      #block(
        height: 1fr,
        width: 100%,
        [
          #set align(center)
          #set align(horizon)
          #set text(size: 14pt)
          AVIATE - NAVIGATE - COMMUNICATE
        ]
      )
      //#line(length: 100%)
    ]
  )
)


