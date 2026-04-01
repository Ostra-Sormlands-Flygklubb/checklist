#import "checklist.typ"

#let section = checklist.section
#let frame = checklist.frame

#let side_title = [
  PA-28 Archer II - SE-MLT
  #box(width: 1fr, repeat[~])
  Endast VFR
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
          //UTKAST \
          PA-28 Archer II - SE-MLT \
          #set text(size: 9pt)
          Version: #sys.inputs.version \
          //http://github.com/hin/typst-checklist
        ]
      )
    )

/*
    #section(checklist.color_preboarding, [Före uppsittning], 
      [
        + Daglig tillsyn / walk around .. utförd
        + Resedagbok \
          (Vita-, gula-, rosa sidor, servicelogg) .. *kontroll*
        + Flytväst + PLB, hörlurar, kartor, sittdyna, pedaler, \
          säkerhetsbälte, första förband .. *kontroll*
      ]
    )
*/

    #section(checklist.color_ground, [Före motorstart],
      [
        + Parkeringsbroms .. TILL
        + Passagerare .. INFORMERADE
        + Säkringar .. KONTROLL
        + Radio Master .. OFF
        + Elförbrukare .. OFF
        + Huvudström .. ON
        + Bränslemätare .. KONTROLL
        + Bränslekran .. VÄNSTER
        + Tachotid .. NOTERA
      ]
    )

    #section(checklist.color_ground, [Motorstart],
      [
        + Blandningsreglage .. RICH
        + Förgasarförvärmare .. OFF
        + Bränslepump.. ON
        + Bränsletryck .. KONTROLL
        + Snapsa (3-4 ggr./kall) .. LÅST
        + Gasreglage .. ÖPPEN 5mm
        + Anti-collision .. ON
        + Propellerfältet fritt .. START
      ]
    )

    #section(checklist.color_ground, [Efter motorstart],
      [
        + Oljetryck .. KONTROLL
        + Bränslepump .. OFF
        + Bränsletryck .. KONTROLL
        + Alternator .. ON/KONTROLL
      ]
    )

    #section(checklist.color_ground, [Före taxi],
      [
        + Säkerhetsbälten .. KONTROLL
        + Radio Master .. ON
        + Höjdmätare .. INSTÄLLD
        + Transponder .. STBY
        + Autopilot funktion/avstängd .. KONTROLL
        + Bränsletank .. HÖGER
      ]
    )

    #section(checklist.color_ground, [Motoruppkörning],
      [
        + Bränsletank .. BÄSTA
        + Motorvarv .. 2000 RPM
        + Magneter max 150 rpm diff .. KONTROLL
        + Förvärmning .. KONTROLL
        + Motorinstrument .. KONTROLL
        + Motorvarv tomgång, sedan .. 1000 RPM
        + Dörr .. 2xLÅST
        + Roder .. FULLA UTSLAG
        + Höjd- och sidtrim .. INSTÄLLDA
        + HSI kurs .. KONTROLL
        + Blandning.. RIK
        + Bränslepump.. ON
        + Förvärmning.. OFF
        + Klaff i läge .. TAKE OFF
        + Avionik .. INSTÄLLD
        + Take-off briefing .. UTFÖRD
        + Nödchecklista .. UTFÖRD
      ]
    )

    #section(checklist.color_ground, [Start],
      [
        + HSI .. QFU
        + Avdragspunkt .. FASTSTÄLLD
        + Fullgas ..
        + Fartmätare .. KONTROLL
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
        + Stigfart .. Vx/Vy
        + Klaff .. IN ... SÄKER HÖJD
      ]
    )
    #section(checklist.color_air, [Planflykt],
      [
        + Bränslepump .. OFF
        + Motoreffekt .. ENLIGT TABELL
        + Blandning .. ENLIGT TABELL
        + Motorinstrument .. KONTROLL
      ]
    )

    #section(checklist.color_air, [Plané], 
      [
        + Motoreffekt .. ENLIGT TABELL
        + Blandning .. ENLIGT TABELL
        + Motorinstrument. .. KONTROLL
        + Bälte .. PÅ
        + Bränslekran.. BÄSTA
        + Blandning .. RICH
        + Bränslepump .. ON
        + Förgasarförvärmning .. ON
        + Landningstrålkastare .. ON
      ]
    )

    #section(checklist.color_air, [Landningsvarv], 
      [
        + Landingsvarv .. Etablerad 1000 ft AAL
        + Klaff .. VIT BÅGE
        + Final .. STABIL 300 ft AAL?
        + Förgasarförvärmning (kort final) .. OFF
      ]
    )

    #section(checklist.color_ground, [Efter landning/Bana evakuerad], 
      [
        + Klaff .. IN
        + Bränslepump .. OFF
        + Landningsstrålkastare .. OFF
        + Transponder .. STBY
      ]
    )

    #section(checklist.color_ground, [Parkering], 
      [
        + Parkeringsbroms .. TILL
        + Kontrollera att ELT inte sänder .. 121.500
        + Radio master .. OFF
        + Elförbrukare .. OFF
        + Garmin G5.. AV
        + Blandningsreglage .. Idle cut-off
        + Anti-collision .. OFF
        + Huvudström .. OFF
        + Magneter .. OFF/NYCKEL UR
        + Tachotid .. NOTERA
      ]
    )

    #set heading(numbering: none)
    #block(
      inset: 1mm,
      block(
        stroke: red + 1mm,
        section(red.transparentize(50%), [Nödchecklista SE-MLT], 
          [
            Motorbortfall
            + Fart .. 75 kt
            + Flyg flygplanet
            + Välj fält
            + Bränslekran .. SKIFTA
            + Bränslepump .. ON
            + Blandning .. RICH
            + Förgasarförvärme .. ON
            + Magneter .. BÄSTA
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
        Anders Henriksson, ÖSFK \
        https://github.com/hin/osfk-checklist
      ]
    )

  ]
)



