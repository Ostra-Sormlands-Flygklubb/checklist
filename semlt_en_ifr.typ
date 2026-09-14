#import "checklist.typ"

#let section = checklist.section
#let frame = checklist.frame

#let side_title = [
  PA-28 Archer II - SE-MLT
  #box(width: 1fr, repeat[~])
  IFR Only
]

#let frame_height = 290mm
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
#show heading: set text(size: 12pt)

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
          PA-28 Archer II - SE-MLT \
          #set text(size: 9pt)
          Version: #sys.inputs.version \
          //http://github.com/hin/typst-checklist
        ]
      )
    )


    #section(checklist.color_preboarding, [Before engine start],
      [
        + Preflight check .. COMPLETED
        + Parking brake .. SET
        + Documents onboard .. VERIFIED
        + Seat .. ADJUSTED
        + Pax emergency briefing .. COMPLETED
        + Tacho time .. NOTE
        + Circuit breakers .. CHECK
        + Electrical equipment & Radio master .. OFF
        + Master switch .. ON
        + Fuel quantity .. CHECK
	+ Fuel selector .. LEFT
	+ Alternate static port .. CHECK
	+ Emergency procedures & TEM .. REVIEW
      ]
    )

    #section(checklist.color_ground, [Engine start],
      [
        + Mixture .. RICH
        + Carburetor heat .. OFF
        + Fuel pump .. ON
        + Fuel pressure .. CHECK
        + Rotating beacon .. ON
        + Primer (if cold) .. PRIME & LOCK
        + Throttle .. 5 mm OPEN
        + Propeller area .. CLEAR
        + Starter .. ENGAGE
        + Throttle .. 1000 RPM
        + Oil pressure .. CHECK
        + Fuel pump .. OFF
        + Fuel pressure .. CHECK
        + Alternator/Load .. ON/CHECK
      ]
    )


    #section(checklist.color_ground, [Before taxi],
      [
        + Belts/harness .. FASTEN
        + Radio master .. ON
        + Transponder .. STBY
        + Aviation Database .. VALID
        + RAIM prediction .. AVAILABLE
        + Autopilot .. CHECK/DISENGAGE
	+ Fuel selector .. RIGHT
        + ATIS .. RECEIVE
      ]
    )

    #section(checklist.color_ground, [Taxiing],
      [
        + Brakes .. CHECK
        + Flight instruments .. CHECK IN TURN
      ]
    )

    #section(checklist.color_ground, [Ground check],
      [
        + Brakes .. SET
        + Oil temperature .. CHECK
        + Mixture .. RICH
        + Throttle .. 2000 RPM
        + Magnetos .. CHECK
        + Carburetor heat .. CHECK
        + Engine gauges .. CHECK
        + Throttle .. IDLE/1000 RPM
        + Trim tabs .. SET
        + Flaps .. CHECK & SET
        + Controls .. FULL&FREE
        + Door/window .. LATCH
        + Clearance .. RECEIVED
	+ Departure briefing .. PERFORM
        + COM + NAV .. SET & IDENTIFY
        + Altimeters .. SET & X-CHECK
        + Fuel pump .. ON
        + Flight and engine instruments .. CHECK
      ]
    )


    #block(
      height: 1fr,
      width: 100%,
      [
        #set align(center)
        #set align(horizon)
        #set text(size: 10pt)
        Blue - in the air \
        Green - On the ground
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
    #section(checklist.color_ground, [When cleared to line up],
      [
        + Mixture .. RICH
        + Transponder .. ALT
        + Landing light .. ON
        + Pitot heat .. ON
        + HSI .. QFU
      ]
    )

    #section(checklist.color_air, [Climb],
      [
        + Climb speed, initially .. Vy
        + Flaps .. RETRACT
        + Landing light .. OFF
        + Icing .. CHECK
        + Altimeter .. 1013 @ TA
      ]
    )
    
    #section(checklist.color_air, [Cruise],
      [
        + Fuel pump .. OFF
        + Power .. SET
        + Mixture .. LEAN
        + Icing .. CHECK
      ]
    )

    #section(checklist.color_air, [Descent], 
      [
        + Directional gyro .. CHECK
        + Fuel quantity .. CHECK
        + Mixture .. Adjust
        + Approach briefing .. PERFORM
        + NAV-aids .. SET & IDENTIFY
      ]
    )

    #section(checklist.color_air, [Approach], 
      [
        + Carburetor heat .. ON
        + Altimeters .. SET
        + Fuel pump .. ON
        + Fuel selector .. PROPER TANK
        + Landing light .. ON
        + Mixture .. RICH
        + Flaps .. AS REQUIRED
      ]
    )

    #section(checklist.color_air, [Short final], 
      [
        + Carburetor heat .. OFF
        + Flaps .. AS REQUIRED
      ]
    )

    #section(checklist.color_ground, [After landing], 
      [
        + Flaps .. RETRACT
        + Fuel pump .. OFF
        + Landing light .. OFF
        + Pitot heat .. OFF
        + Transponder .. STBY
      ]
    )

    #section(checklist.color_ground, [Parking], 
      [
        + Parking brake .. ON
        + Electrical equipment & Radio master .. OFF
        + Mixture .. IDLE CUT-OFF
        + Magnetos .. OFF
        + Rotating beacon .. OFF
        + Master switch .. OFF
        + Fuel selector .. OFF
        + Tacho time .. NOTE
      ]
    )

    #set heading(numbering: none)
    #block(
      inset: 1mm,
      block(
        stroke: red + 1mm,
        section(red.transparentize(50%), [EMERGENCY CHECKLIST], 
          [
            Engine Failure
            + Speed .. 75 KTS
            + Open terrain .. LOCATE
            + Fuel selector .. BEST
            + Fuel pump .. ON
            + Mixture .. RICH
            + Carburetor heat .. ON
            + Magnetos .. BEST
            + Transponder .. 7700
            + Emergency message .. CURRENT OR 121,5
          ]
        )

      )
    )

    //#line(length: 100%)
    //#block(
      //height: 1fr,
      //width: 100%,
      //[
        //#set align(center)
        //#set align(horizon)
        //#set text(size: 13pt)
        //AVIATE - NAVIGATE - COMMUNICATE
      //]
    //)

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



