#let version = [utkast-2026-01-12a]
#let side_title = [SE-MMB / SE-MMC]

#let frame_height = 270mm
#let frame_width = 95mm
#let frame_thickness = 0.5mm

#let cground = lime.transparentize(40%)
#let cair = aqua.transparentize(40%)

#set page(
  width: frame_width + 5mm,
  height: frame_height + 5mm,
  margin: 1mm,
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

#import "checklist.typ"

#let check = checklist.check
#let section = checklist.section
#let frame = checklist.frame

#frame(
  side_title: side_title,
  height: frame_height,
  width: frame_width,
  thickness: frame_thickness,
  [
    #grid(
      columns: 2,
      box(inset: 1mm,
        image("images/osfk-logo.svg", height: 15mm)
      ),
      box(
        inset: 2mm,
        width: 1fr,
        [
          #set text(size: 12pt)
          #set align(center)
          #set align(horizon)
          //UTKAST \
          Evektor Sportstar \
          #set text(size: 9pt)
          Version: #version \
          //http://github.com/hin/typst-checklist
        ]
      )
    )

    #section(yellow, [Före uppsittning], 
      [
        + #check([Daglig tillsyn / walk around],[utförd])
        + #check([Resedagbok \ (Vita-, gula-, rosa sidor, servicelogg)],
          highlight[kontroll])
        + #check([Flytväst, hörlurar, kartor, sittdyna, \ pedaler, säkerhetsbälte],
          highlight[kontroll])
      ]
    )
    #section(cground, [Före motorstart],
      [
        + #check([Pedaler och säkerhetsbälten], [justerade])
        + #check([Parkeringsbroms], [släpp])
        + #check([Circuit brakers], [kontrollera])
        + #check([Elförbrukare], [OFF])
        + #check([MASTER SWITCH], [ON])
        + #check([Roder kontroll], [fulla utslag])
        + #check([Klaff kontroll], [IN - T/O - L1 - L2 - IN])
        + #check([Trim], [kontroll])
        + #check([Bränslemängd],[kontroll])
        + #check([Bränslekran], [LEFT])
        + #check([Tacho], [notera])
        + #check([Huv], [stängd & låst])
        + #check([Propellerfält (dragstång)], [fritt])
      ]
    )

    #section(cground, [Motorstart],
      [
        + #check([BEACON], [ON])
        + #check([FUEL PUMP], [kontroll, bränsletryck ≥0.15 bar])
        + #check([CHOKE (vid behov)], [UT])
        + #check([THROTTLE], [tomgång])
        + #check([Fotbromsar], [tryck])
        + #check([KEY], [START])
        + #check([Oljetryck], [≥2 bar inom 10 sek], important: true)
        + #check([CHOKE], [IN])
        + #check([Övriga motorvärden], [kontroll])
        + #check([GEN + AUX GEN], [ON])
        + #check([AVIONICS SWITCH + IC], [ON])
        + #check([Motorvärmning], [2500 rpm])
        + #check([Höjdmätare], [QFE, QNH?])
        + #check([Radio & Navigator], [inställd])
        + #check([Transponder], [STBY])
      ]
    )
    #section(cground, [Motoruppkörning/Run-up area],
      [
        + #check([Roder kontroll], [fulla utslag])
        + #check([TRIM], [neutral])
        + #check([Klaff], [T/O])
        + #check([Bränslekran], [RIGHT])
        + #check([FUEL PUMP], [ON])
        + #check([LDG LIGHT], [ON])
        + #check([SOCKET], [OFF])
        + #check([Oljetemp], [≥ 50°C], important: true)
        + #check([Tändningskontroll], [4000 rpm])
          #check([KEY], [L - BOTH- R - BOTH])
          #check([Varvtal], [drop ≤ 300 rpm, diff ≤ 120 rpm])
          #check([CARB HEAT], [kontroll])
        + #check([Bränslekran], [bästa tank])
        + #check([Huv], [stängd & låst])
        + #check([Starttid], [notera])
        + #check([Nödchecklista + TEM], [repetera])
      ]
    )

    #section(cground, [På rullbanan],
      [
        + #check([Transponder], [ALT])
        + #check([Avdragspunkt], [fastställ])
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


#frame(
  side_title: side_title,
  height: frame_height,
  width: frame_width,
  thickness: frame_thickness,
  [
    #section(cair, [Stigning],
      [
        + #check([Stigfart: klaff T/O], [57 kt])
        + #check([På 300 ft: klaff IN], [65 kt])
        + #check([LDG LIGHT], [OFF])
        + #check([Motorinstrument], [kontroll])
      ]
    )
    #section(cair, [Planflykt/På marschhöjd],
      [
        + #check([Marscheffekt], [4800-5500 rpm])
        + #check([FUEL PUMP], [OFF])
        + #check([Motorinstrument], [kontroll])
        + #check([SOCKET (vid behov)], [ON])
      ]
    )

    #section(cair, [Före landning], 
      [
        + #check([Säkerhetsbälten], [justera])
        + #check([Bränslemängd], [kontroll])
        + #check([Bränslekran], [bästa tank])
        + #check([SOCKET], [OFF])
        + #check([FUEL PUMP], [ON])
        + #check([LDG LIGHT], [ON])
        + #check([CARB HEAT], [UT])
      ]
    )

    #section(cair, [Landningsvarv], 
      [
        + #check([Medvind: FLAPS T/O (inom vit båge)], [≤ 70 kt])
        + #check([Pådragspunkt], [FASTSTÄLL])
        + #check([Bas: FLAPS L1], [65 kt])
        + #check([Final: FLAPS L1/L2:], [57 kt])
        + #check([Kort final: CARB HEAT], [IN])
      ]
    )

    #section(cground, [Efter landning], 
      [
        + #check([Klaff], [IN])
        + #check([FUEL PUMP], [OFF])
        + #check([LDG LIGHT], [OFF / STBY])
        + #check([Transponder], [STBY])
        + #check([Landningstid], [notera])
      ]
    )

    #section(cground, [Parkering / Shut down], 
      [
        + #check([AVIONICS + Elförbrukare utom BEACON], [OFF])
        + #check([GEN + AUX GEN], [OFF])
        + #check([KEY], [STOP + ut (krok)])
        + #check([BEACON], [OFF])
        + #check([MASTER SWITCH notera Tacho], [OFF])
        + #check([Bränslekran], [OFF])
        + #check([PARKING BRAKES], [OFF?])
        + #check([Färdplan], [AVSLUTA?], important: true) \
        Resedagbok, hangarera/förtöj, kapell, pitotskydd
      ]
    )
    #block(
      inset: 1mm,
      block(
        stroke: red + 1mm,
        section(red.transparentize(50%), [Nödchecklista SE-MMB / SE-MMC], 
          [
            Motorstörning/-bortfall i luften
            + #check([Fart], [59 kt], important: true)
              #highlight[
                Flyg flygplanet \
                Välj fält
              ]
            + #check([FUEL PUMP], [ON])
            + #check([Bränslekran], [skifta])
            + #check([CARB HEAT], [UT])
            + #check([CHOKE], [IN])
            + #check([THROTTLE], [tomgång])
            + #check([KEY L + R], [bästa krets])
            + #check([Återstart (om stannat)], [försök])
            + #check([Säkerhetsbälte], [dra åt / info PAX])
            + #check([Transponder], [7700])
            + #check([Nödmeddelande], [121.5 eller aktuell frekvens])
            //+ #check([Nödsändare PLB + ELT], [ON])
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



