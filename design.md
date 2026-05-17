# Guzheng Starter Design Notes

Current status: `bare-bones readiness packet`.

Fabrication authority: `not build-ready`. All geometry below is planning
language unless it is later backed by measured reference data, CAD/DXF review,
or a controlled design table.

## Family Geometry

The target family is a long-board movable-bridge zither. A guzheng packet needs
to track the body outline, end blocks, side rails, string anchor zones,
soundboard/top, back/bottom, bridge field, and player-facing orientation as
separate design surfaces. At this starter stage, the body envelope is
`measurement-required` because final length, width, crown, rail height, and
string-anchor geometry must come from either a measured reference instrument or
an explicit design table.

Family-level expectation: modern guzheng references often use 21 courses, but
this packet keeps course count as a measured/configurable field instead of
treating it as universal.

## Movable Bridges

Each course uses a movable bridge to set vibrating string length and local load
transfer into the soundboard. Bridge placement is therefore both a tuning
variable and a structural variable. A build-ready plan must record:

- course number and pitch target;
- speaking length from nut/anchor reference to bridge contact point;
- bridge foot width, contact material, and footprint orientation;
- bridge height, saddle/contact radius, and string break angle;
- movement range for retuning without bridge instability;
- witness marks or reference grid that can be checked without treating a
  generated image as dimensional evidence.

Starter rule: no bridge layout is fabrication authority until course-by-course
measurements and a reviewed CAD/DXF or design table exist.

## String Courses

A starter guzheng course model needs pitch, string material, gauge, vibrating
length, estimated tension, and retuning range. The first measurement loop
should capture at least open pitch, bridge position, string diameter, material
or product family, and stable tuning after repeated plucks.

The `family-spec.csv` planning bands are not cut dimensions. They are only a
place to record coarse bass/mid/treble speaking-length ranges while the target
instrument is selected and measured.

## Soundboard Behavior

The soundboard/top is load-bearing and tone-shaping. Bridge feet concentrate
downforce, and the board response changes with crown, bracing, grain direction,
thickness, finish, humidity, and total string tension. Before any L2 shop packet
is claimed, the packet needs measurements for:

- top thickness and local thickness variation;
- board crown or arch under no string load;
- deflection at selected bridge locations under string load;
- bridge-foot indentation or finish compression after tuning cycles;
- tap-tone or modal notes if a repeatable measurement method is chosen;
- humidity and temperature during deflection and tuning observations.

## Unknowns Requiring Measurement

| Unknown | Why It Matters | First Evidence Needed |
| --- | --- | --- |
| Body envelope and rail geometry | Controls ergonomics, string spread, and drawing scale. | Measured reference dimensions or design-table proposal. |
| Course count and course spacing | Controls anchors, bridges, and tuning map. | Target instrument selection and measured course spacing. |
| Speaking length by course | Drives tension, bridge placement, and pitch model. | Nut-to-bridge and bridge-to-anchor measurements under known tuning. |
| String material and gauge | Drives tension, feel, sustain, and structural load. | Gauge/material record for each course or sourced string set data. |
| Bridge geometry and foot area | Drives downforce transfer and local soundboard stress. | Measured bridge sample or prototype bridge coupon. |
| Soundboard thickness/crown | Drives stiffness and response. | Caliper/depth-gauge measurements and crown reference line. |
| Deflection under load | Determines whether the top behavior is safe/stable. | Dial indicator or depth-gauge readings before/after tuning cycles. |
| Tuning stability | Determines whether bridge placement and string choice are viable. | Pitch drift logs over time, pluck cycles, and retuning events. |

## L1 Boundary

This starter packet can support planning, measurement, and issue review. It
does not authorize cutting a soundboard, drilling anchors, placing bridge
marks, ordering final string gauges, or selling a build plan.
