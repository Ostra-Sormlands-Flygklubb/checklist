#import "checklist.typ"

#let section = checklist.section
#let frame = checklist.frame

#let side_title = [
  PA-28 Archer II - SE-MLT
  #box(width: 1fr, repeat[~])
  VFR Only
]

#let frame_height = 270mm
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
          PA-28 Archer II - SE-MLT \
          #set text(size: 9pt)
          Version: #sys.inputs.version \
        ]
      )
    )

    #section(checklist.color_preboarding, [Before engine start],
      [
        + Parking brake .. SET
        + Passengers .. BRIEFED
        + Circuit breakers .. CHECK
        + Radio Master .. OFF
        + Electrical equipment .. OFF
        + Master switch .. ON
        + Fuel quantity .. CHECK
        + Fuel selector .. LEFT
        + Tacho time .. NOTE
      ]
    )

    #section(checklist.color_ground, [Engine start],
      [
        + Mixture .. RICH
        + Carburetor heat .. OFF
        + Fuel pump .. ON
        + Fuel pressure .. CHECK
        + Primer (3-4 times / if cold) .. LOCKED
        + Throttle .. 5 mm OPEN
        + Anti-collision .. ON
        + Propeller area clear .. START
      ]
    )

    #section(checklist.color_ground, [After engine start],
      [
        + Oil pressure .. CHECK
        + Fuel pump .. OFF
        + Fuel pressure .. CHECK
        + Alternator .. ON/CHECK
      ]
    )

    #section(checklist.color_ground, [Before taxi],
      [
        + Seat belts .. CHECK
        + Radio Master .. ON
        + Altimeter .. SET
        + Transponder .. STBY
        + Autopilot function/disengaged .. CHECK
        + Fuel tank .. RIGHT
      ]
    )

    #section(checklist.color_ground, [Ground check],
      [
        + Fuel tank .. BEST
        + Engine RPM .. 2000 RPM
        + Magnetos max 150 RPM diff .. CHECK
        + Carburetor heat .. CHECK
        + Engine instruments .. CHECK
        + Engine RPM idle, then .. 1000 RPM
        + Door .. 2x LATCHED
        + Controls .. FULL DEFLECTION
        + Elevator and rudder trim .. SET
        + HSI heading .. CHECK
        + Mixture .. RICH
        + Fuel pump .. ON
        + Carburetor heat .. OFF
        + Flaps .. TAKE OFF
        + Avionics .. SET
        + Take-off briefing .. COMPLETED
        + Emergency checklist .. COMPLETED
      ]
    )

    #section(checklist.color_ground, [Takeoff],
      [
        + HSI .. RWY HDG
        + Abort point .. ESTABLISHED
        + Full throttle ..
        + Airspeed indicator .. CHECK
      ]
    )

    #block(
      height: 1fr,
      width: 100%,
      [
        #set align(center)
        #set align(horizon)
        #set text(size: 10pt)
        Blue - in the air - from memory \
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
        + Climb speed .. Vx/Vy
        + Flaps .. RETRACT at safe altitude
      ]
    )

    #section(checklist.color_air, [Cruise],
      [
        + Fuel pump .. OFF
        + Engine power .. PER TABLE
        + Mixture .. PER TABLE
        + Engine instruments .. CHECK
      ]
    )

    #section(checklist.color_air, [Descent],
      [
        + Engine power .. PER TABLE
        + Mixture .. PER TABLE
        + Engine instruments .. CHECK
        + Seat belt .. ON
        + Fuel selector .. BEST
        + Mixture .. RICH
        + Fuel pump .. ON
        + Carburetor heat .. ON
        + Landing light .. ON
      ]
    )

    #section(checklist.color_air, [Traffic pattern],
      [
        + Circuit .. Established 1000 ft AAL
        + Flaps .. WHITE ARC
        + Final .. Stable 300 ft AAL?
        + Carburetor heat (short final) .. OFF
      ]
    )

    #section(checklist.color_ground, [After landing / Runway vacated],
      [
        + Flaps .. RETRACT
        + Fuel pump .. OFF
        + Landing light .. OFF
        + Transponder .. STBY
      ]
    )

    #section(checklist.color_ground, [Parking],
      [
        + Parking brake .. SET
        + Check ELT not transmitting .. 121.500
        + Radio master .. OFF
        + Electrical equipment .. OFF
        + Garmin G5 .. OFF
        + Mixture .. IDLE CUT-OFF
        + Anti-collision .. OFF
        + Master switch .. OFF
        + Magnetos .. OFF / KEY OUT
        + Tacho time .. NOTE
      ]
    )

    #set heading(numbering: none)
    #block(
      inset: 1mm,
      block(
        stroke: red + 1mm,
        section(red.transparentize(50%), [Emergency Checklist SE-MLT],
          [
            Engine Failure
            + Speed .. 75 kt
            + Fly the aircraft
            + Select a field
            + Fuel selector .. CHANGE
            + Fuel pump .. ON
            + Mixture .. RICH
            + Carburetor heat .. ON
            + Magnetos .. BEST
            + Seat belt .. tighten / brief PAX
            + Transponder .. 7700
            + Emergency message .. 121.5 or current frequency
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
        Anders Henriksson, ÖSFK \
        https://github.com/hin/osfk-checklist
      ]
    )

  ]
)
