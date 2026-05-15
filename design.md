# Guzheng Reference-Member-First Family Design

## Scope

This packet promotes the Round 8 guzheng family direction into a canonical repo
packet for compact, reference, and bass members. It keeps the family
manufacturing scaffold, but makes the reference member the only valid gate
build. The compact and bass members are intentionally blocked until reference
evidence exists.

## Readiness

Readiness: `L2 prototype scaffold`.

This packet records the validation path and file contracts. It does not claim
build-ready dimensions for the body, bridge corridor, soundboard crown,
bracing, string schedule, or load-bearing joinery. Those values require measured
reference work and reviewed DXF/CAD.

## Observed And Assumed Instrument Facts

Observed facts:

- A guzheng is a plucked board zither with moveable bridges.
- The player-facing setup depends on bridge corridor geometry, string tension,
  crown, and soundboard response.
- Family members can share construction ideas, but string load and panel
  response do not scale safely from a concept image.

Working assumptions to validate:

- `GUZ-REF-21` is the reference member and should be built before compact or
  bass variants.
- Compact and bass variants may inherit the reference construction method only
  after the reference member passes crown, creep, bridge-corridor, and load
  validation.
- DXF/CAD or measured shop templates are fabrication authority; generated
  imagery is visual support only.

Unknowns requiring measurement:

- Final reference body length, width, rim height, bridge corridor width, and
  end-block geometry.
- String count, tuning plan, string gauges, and full-tension load.
- Soundboard species, thickness map, bracing pattern, target crown, and
  acceptable creep over time.
- Bridge foot geometry, bridge spacing corridor, and surface finish behavior.

## Family Architecture

| Member | Role | Build Status | Inheritance Rule |
| --- | --- | --- | --- |
| `GUZ-CMP-16` | compact study | blocked | May inherit only after `GUZ-REF-21` passes all blocking gates. |
| `GUZ-REF-21` | reference member | first build | Governing test article for geometry, load, crown, and bridge corridor. |
| `GUZ-BAS-21` | bass/extended study | blocked | May inherit only after reference load and creep gates pass with margin. |

## Reference Member Gate

The reference member is complete enough to propagate family dimensions only
when all blocking rows in `validation.csv` pass:

- `GZ-REF-CROWN`: crown target measured before stringing and after tensioning.
- `GZ-REF-CREEP`: deflection logged over time at full tension.
- `GZ-REF-BRIDGE-CORRIDOR`: bridge travel and clearance proven with physical
  bridge templates.
- `GZ-REF-LOAD`: full string load and load path reviewed before tensioning.
- `GZ-REF-STRING-SCHEDULE`: gauges and tuning plan recorded with expected
  aggregate tension.
- `GZ-REF-DXF-AUTHORITY`: drawing package reviewed before cutting.
- `GZ-REF-VISUAL-AUTHORITY`: generated images excluded from fabrication
  authority.

## Manufacturing Scaffold

The packet expects a DXF-first workflow:

1. Draft the reference body outline, bridge corridor, datum line, end blocks,
   bracing, and string path as DXF/CAD.
2. Mark measured reference dimensions in the drawing title block.
3. Cut no compact or bass stock until the reference validation table is filled.
4. Treat the first reference build as a measurement mule and tone-response test.
5. Promote compact and bass rows only after the reference member documents
   crown retention, creep, and safe load behavior.

## Concept Image Policy

Concept images may show overall family identity, bridge count, finish direction,
or visual BOM layout. They must not provide dimensions, hole locations, bridge
spacing, bracing geometry, string path, or load-bearing joinery. The governing
authority is the DXF/CAD package or measured shop template named in
`visual-output-register.csv`.
