#import "evss_common.typ" as evss
#import "checklist.typ"

#let section = checklist.section
#let frame = checklist.frame

#let side_title = [
  SE-MMB / SE-MMC - Evektor Sportstar - EVSS
  #box(width: 1fr, repeat[~])
  VFR Daylight only
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

    #section(checklist.color_preboarding, [Before boarding],
      [
        + Pre-flight / walk around .. performed
        + Aircraft journey/technical log \
          (White-, yellow-, pink pages, service log) .. *check*
        + Lifejacket, headset, maps, seat cushion, \ rudder pedals,
          harness, PLB?, first aid kit .. *check*
      ]
    )
    #section(checklist.color_ground, [Before engine starting],
      [
        + Rudder pedals and harness .. adjust
        + Passenger .. brief
        + Parking brake .. release
        + Circuit brakers .. check
        + Electricity consumers .. OFF
        + MASTER SWITCH .. ON
        + Control stick and rudder pedals .. free
        + Flaps free .. IN - T/O - L1 - L2 - IN
        + Trim .. check
        + Fuel gauge .. check
        + Fuel selector .. LEFT
        + Tacho time .. note
        + Canopy .. close & lock
        + Propeller area (tow bar).. clear
      ]
    )

    #section(checklist.color_ground, [Engine starting],
      [
        + BEACON .. ON
        + FUEL PUMP \
          ON - check fuel pressure - OFF .. ≥0.15 bar
        + CHOKE (if needed) .. OUT
        + THROTTLE .. idle
        + Foot brakes .. apply
        + KEY .. START
        + *Oil pressure .. ≥2 bar within 10 sek*
        + CHOKE .. IN
        + Engine gauges .. check
        + GEN + AUX GEN .. ON
        + AVIONICS SWITCH + IC .. ON
        + Engine warming up .. 2500 rpm
        + Altimeter .. QFE, QNH?
        + Radio & Navigator .. set
        + Transponder .. STBY
      ]
    )
    #section(checklist.color_ground, [Engine run-up/Run-up area],
      [
        + Control stick and rudder pedals .. free
        + TRIM .. neutral
        + SOCKET .. OFF
        + FUEL PUMP .. ON
        + LDG LIGHT .. ON
        + Flaps .. T/O
        + Fuel selector .. RIGHT
        + *Oil temperature .. ≥ 50°C*
        + Ignition check .. 4000 rpm \
          KEY .. L - BOTH- R - BOTH \
          RPM .. drop ≤ 300 rpm, diff ≤ 120 rpm \
          CARB HEAT .. check
        + Fuel selector .. best tank
        + Canopy .. closed & locked
        + Take-off time .. note
        + Emergency checklist + TEM .. repeat
      ]
    )

    #section(checklist.color_ground, [On the runway],
      [
        + Transponder .. ALT
        + Abort/reject point .. determine
      ]
    )

    #block(
      height: 1fr,
      width: 100%,
      [
        #set align(center)
        #set align(horizon)
        #set text(size: 10pt)
        Blue - in the air - by heart \
        Green - on the ground - read and do
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
    #section(checklist.color_air, [Climb],
      [
        + Climb speed: Flaps T/O .. 57 kt
        + At 300 ft: Flaps IN .. 65 kt
        + LDG LIGHT .. OFF
        + Engine instruments .. check
      ]
    )
    #section(checklist.color_air, [Cruise/At cruise altitude],
      [
        + Cruise power .. 4800-5500 rpm
        + FUEL PUMP .. OFF
        + Engine instruments .. check
        + SOCKET (if needed) .. ON
      ]
    )

    #section(checklist.color_air, [Before landing], 
      [
        + Harness .. adjust
        + Fuel gauge .. check
        + Fuel selector .. best tank
        + SOCKET .. OFF
        + FUEL PUMP .. ON
        + LDG LIGHT .. ON
        + CARB HEAT .. OUT
      ]
    )

    #section(checklist.color_air, [Traffic pattern / circuit], 
      [
        + Downwind: Flaps T/O (within white arc) .. ≤ 70 kt
        + Go-around/Missed approach point .. determine
        + Base: Flaps L1 .. 65 kt
        + Final: Flaps L1/L2: .. 57 kt
        + Short final: CARB HEAT .. IN
      ]
    )

    #section(checklist.color_ground, [After landing], 
      [
        + Flaps .. IN
        + FUEL PUMP .. OFF
        + LDG LIGHT .. OFF / STBY
        + Transponder .. STBY
        + Touch down time .. note
      ]
    )

    #section(checklist.color_ground, [Parking / Shut down], 
      [
        + AVIONICS .. OFF
        + Electricity consumers except BEACON .. OFF
        + GEN + AUX GEN .. OFF
        + KEY .. STOP + out (hook)
        + BEACON .. OFF
        + Tacho time .. note
        + MASTER SWITCH .. OFF
        + Fuel selector .. OFF
        + Parking brake .. release
        + *Flight plan .. close?* \
        Aircraft journey/technical log, hangar/moor, cover, pitot cap
      ]
    )

    #set heading(numbering: none)
    #block(
      inset: 1mm,
      block(
        stroke: red + 1mm,
        section(red.transparentize(50%), [Emergency checklist EVSS], 
          [
            Engine malfunction or failure while airborne
            + *Speed .. 59 kt* \
              *Fly the aircraft* \
              *Select landing site*
            + FUEL PUMP .. ON
            + Fuel selector .. switch
            + CARB HEAT .. OUT
            + CHOKE .. IN
            + THROTTLE .. idle
            + KEY L + R .. best circuit
            + Restart (if stopped) .. attempt
            + Harness .. tighten / info PAX
            + Transponder .. 7700
            + Emergency message .. 121.5 or current frequency
            //+ Nödsändare PLB + ELT .. ON
          ]
        )

      )
    )

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



