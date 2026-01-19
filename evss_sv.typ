#import "evss_common.typ" as evss
#import "checklist.typ"

#let section = checklist.section
#let frame = checklist.frame

#let side_title = [
  SE-MMB / SE-MMC - Evektor Sportstar - EVSS
  #box(width: 1fr, repeat[~])
  Endast VFR dager
]

#let frame_height = 280mm
#let frame_width = 95mm
#let frame_thickness = 0.5mm

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
  spacing: 1mm
)

#set par(
  leading: 0.4em,
)

#set heading(numbering: "A.")

#show "..": checklist.dots
#set strong(delta: 0)
#show strong: highlight

#frame(
  side_title: side_title,
  height: frame_height,
  width: frame_width,
  stroke: black + frame_thickness,
  [
    #grid(
      columns: 2,
      rows: 18mm,
      box(inset: 1mm,
        image("images/osfk-logo.svg", fit: "contain")
      ),
      box(
        inset: 0mm,
        width: 1fr,
        height: 100%,
        [
          #set text(size: 12pt)
          #set align(center)
          #set align(horizon)
          //UTKAST \
          EVSS - Evektor Sportstar \
          #set text(size: 9pt)
          Version: #evss.version \
          //http://github.com/hin/typst-checklist
        ]
      )
    )

    #section(checklist.color_preboarding, [Före uppsittning], 
      [
        + Daglig tillsyn / walk around .. utförd
        + Resedagbok \
          (Vita-, gula-, rosa sidor, servicelogg) .. *kontroll*
        + Flytväst + PLB, hörlurar, kartor, sittdyna, pedaler, \
          säkerhetsbälte, första förband .. *kontroll*
      ]
    )

    #section(checklist.color_ground, [Före motorstart],
      [
        + Pedaler och säkerhetsbälten .. justera
        + Passagerare .. informera
        + Parkeringsbroms .. släpp
        + Circuit brakers .. kontroll
        + Elförbrukare .. OFF
        + MASTER SWITCH .. ON
        + Roder kontroll .. fulla utslag
        + Klaff kontroll .. IN - T/O - L1 - L2 - IN
        + Trim .. kontroll
        + Bränslemängd .. kontroll
        + Bränslekran .. LEFT
        + Tachotid .. notera
        + Huv .. stäng & lås
        + Propellerfält (dragstång) .. fritt
      ]
    )

    #section(checklist.color_ground, [Motorstart],
      [
        + BEACON .. ON
        + FUEL PUMP \
          ON - kontroll bränsletryck - OFF .. ≥0.15 bar
        + CHOKE (vid behov) .. UT
        + THROTTLE .. tomgång
        + Fotbromsar .. tryck
        + KEY .. START
        + *Oljetryck .. ≥2 bar inom 10 sek*
        + CHOKE .. IN
        + Övriga motorvärden .. kontroll
        + GEN + AUX GEN .. ON
        + AVIONICS SWITCH + IC .. ON
        + Motorvärmning .. 2500 rpm
        + Höjdmätare .. QFE, QNH?
        + Radio & Navigator .. inställd
        + Transponder .. STBY
      ]
    )

    #section(checklist.color_ground, [Motoruppkörning/Run-up area],
      [
        + Roder kontroll .. fulla utslag
        + TRIM .. neutral
        + SOCKET .. OFF
        + FUEL PUMP .. ON
        + LDG LIGHT .. ON
        + Klaff .. T/O
        + Bränslekran .. RIGHT
        + *Oljetemp .. ≥ 50°C*
        + Tändningskontroll .. 4000 rpm \
          KEY .. L - BOTH- R - BOTH \
          Varvtal .. drop ≤ 300 rpm, diff ≤ 120 rpm \
          CARB HEAT .. kontroll
        + Bränslekran .. bästa tank
        + Huv .. stängd & låst
        + Starttid .. notera
        + Nödchecklista + TEM .. repetera
      ]
    )

    #section(checklist.color_ground, [På rullbanan],
      [
        + Transponder .. ALT
        + Avdragspunkt .. fastställ
      ]
    )

    #block(
      height: 1fr,
      width: 100%,
      [
        #set align(center)
        #set align(horizon)
        #set text(size: 10pt)
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
  stroke: black + frame_thickness,
  [
    #section(checklist.color_air, [Stigning],
      [
        + Stigfart: klaff T/O .. 57 kt
        + På 300 ft: klaff IN .. 65 kt
        + LDG LIGHT .. OFF
        + Motorinstrument .. kontroll
      ]
    )
    #section(checklist.color_air, [Planflykt/På marschhöjd],
      [
        + Marscheffekt .. 4800-5500 rpm
        + FUEL PUMP .. OFF
        + Motorinstrument .. kontroll
        + SOCKET (vid behov) .. ON
      ]
    )

    #section(checklist.color_air, [Före landning], 
      [
        + Säkerhetsbälten .. justera
        + Bränslemängd .. kontroll
        + Bränslekran .. bästa tank
        + SOCKET .. OFF
        + FUEL PUMP .. ON
        + LDG LIGHT .. ON
        + CARB HEAT .. UT
      ]
    )

    #section(checklist.color_air, [Landningsvarv], 
      [
        + Medvind: Klaff T/O (inom vit båge) .. ≤ 70 kt
        + Pådragspunkt .. FASTSTÄLL
        + Bas: Klaff L1 .. 65 kt
        + Final: Klaff L1/L2: .. 57 kt
        + Kort final: CARB HEAT .. IN
      ]
    )

    #section(checklist.color_ground, [Efter landning], 
      [
        + Klaff .. IN
        + FUEL PUMP .. OFF
        + LDG LIGHT .. OFF / STBY
        + Transponder .. STBY
        + Landningstid .. notera
      ]
    )

    #section(checklist.color_ground, [Parkering / Shut down], 
      [
        + AVIONICS .. OFF
        + Elförbrukare utom BEACON .. OFF
        + GEN + AUX GEN .. OFF
        + KEY .. STOP + ut (krok)
        + BEACON .. OFF
        + Tachotid .. notera
        + MASTER SWITCH .. OFF
        + Bränslekran .. OFF
        + Parkeringsbroms .. släpp
        + *Färdplan .. avsluta?* \
        Resedagbok, hangarera/förtöj, kapell, pitotskydd
      ]
    )

    #set heading(numbering: none)
    #block(
      inset: 1mm,
      block(
        stroke: red + 1mm,
        section(red.transparentize(50%), [Nödchecklista EVSS], 
          [
            Motorstörning/-bortfall i luften
            + *Fart .. 59 kt* \
              *Flyg flygplanet* \
              *Välj fält*
            + FUEL PUMP .. ON
            + Bränslekran .. skifta
            + CARB HEAT .. UT
            + CHOKE .. IN
            + THROTTLE .. tomgång
            + KEY L + R .. bästa krets
            + Återstart (om stannat) .. försök
            + Säkerhetsbälte .. dra åt / info PAX
            + Transponder .. 7700
            + Nödmeddelande .. 121.5 eller aktuell frekvens
            //+ Nödsändare PLB + ELT .. ON
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
        #set text(size: 13pt)
        AVIATE - NAVIGATE - COMMUNICATE
      ]
    )

    #block(
      width: 100%,
      inset: 1mm,
      [
        #set align(right + bottom)
        #set text(size: 8pt)
        https://github.com/hin/osfk-checklist
      ]
    )

  ]
)



