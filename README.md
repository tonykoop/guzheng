# Guzheng Family Starter Packet

Current status: `bare-bones readiness packet`.

Fabrication authority: `not build-ready`. Future CAD/DXF, measured templates,
or reviewed design tables must become the fabrication authority before any
bridge slots, soundboard outline, rail geometry, string anchors, or toolpaths
are treated as build dimensions.

This repository starts a guzheng-family zither packet at L1/starter level. It
separates family-level design intent from the measurements still needed for a
specific instrument, especially movable bridge placement, string scale/tension,
soundboard behavior, and tuning stability.

## File Map

| File | Purpose |
| --- | --- |
| `design.md` | Family geometry, movable bridge logic, string-course model, soundboard behavior, and open measurements. |
| `family-spec.csv` | Zither-family packet rows for course count, string-length planning ranges, bridge role, soundboard constraints, tuning plan, and provenance. |
| `bom.csv` | Starter bill of materials with verification status and sourcing notes. |
| `sourcing.csv` | Supplier/search placeholders without current price or availability claims. |
| `validation-loop.csv` | Starter measurement loop for bridge placement, string tension, tuning stability, soundboard deflection, and pitch verification. |
| `cad-dxf-authority-plan.md` | Future CAD/DXF authority plan and drawing gates. |
| `notebooks/guzheng-string-bridge-stiffness-study.wl` | Wolfram Language starter for tension, bridge placement, and stiffness studies. |

## Readiness Gates

1. Select or measure a target guzheng reference instrument.
2. Record course-by-course vibrating length, string gauge/material, pitch, and
   bridge location under known tuning.
3. Measure soundboard/top thickness, crown, deflection under load, and bridge
   footprint behavior before drafting cut-ready geometry.
4. Promote CAD/DXF from planning to fabrication authority only after measured
   values and review notes are captured.

## Recorded Local Validation

- CSV sanity parse for `*.csv`: pass.
- `wolframscript -file notebooks/guzheng-string-bridge-stiffness-study.wl`:
  pass; the notebook is syntax/evaluation clean with starter sample rows only.
- Existing repo validators/tests: none present in this starter repo.
- `git diff --check`: pass.

## License Note

No license has been selected in this starter packet. Add an explicit license
before publishing fabrication files, vendor packets, or derivative drawings.
