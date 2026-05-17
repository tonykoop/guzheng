# CAD/DXF Authority Plan

Current status: `future authority unless measured geometry already exists`.

This starter packet has no fabrication-authority drawing. Future DXF/CAD files
must be derived from measured reference data or reviewed design tables, not from
concept images, sketches, or prose descriptions.

## Future Authority Chain

1. `family-spec.csv` records family assumptions and open measurements.
2. `validation-loop.csv` records bridge placement, string tension, tuning
   stability, soundboard deflection, and pitch evidence.
3. A future design table records course-by-course measured values with units,
   tolerances, and provenance.
4. A future body/bridge-layout DXF is generated or checked from that design
   table.
5. Derived SVG/PDF previews may be added only after they name the governing
   DXF/CAD/design table.

## Required Future Drawings

| Drawing | Authority Target | Required Before Release |
| --- | --- | --- |
| Body envelope plan | DXF or CAD | Measured target length/width/rail geometry or reviewed design-table proposal. |
| Course/anchor layout | DXF plus design table | Course count, course spacing, anchor positions, and string path references. |
| Bridge placement grid | Design table plus DXF overlay | Speaking length by course under known tuning and measured bridge movement range. |
| Bridge component drawing | CAD or dimensioned drawing | Foot width, height, contact radius, material, and load/contact notes. |
| Soundboard deflection map | Measurement template | Baseline and loaded deflection points with humidity/temperature context. |

## Non-Authority Visuals

Generated concept images, renderings, or illustrated build logs may be useful
later, but they must be marked `concept_only` or `reference_only`. They must
not supply bridge positions, string scale lengths, anchor spacing, soundboard
thickness, or toolpaths.

## Promotion Rule

Promote to L2 only when a reviewer can trace every dimension in a drawing back
to measured reference data, a design-table row, or an explicitly reviewed
engineering assumption.
