# Guzheng Reference Family Drawing Brief

## Required DXF/CAD Sheets

- `GUZ-REF-21-01-body-outline.dxf`: reference body outline, centerline,
  bridge corridor, end-block datum, and scale bar.
- `GUZ-REF-21-02-crown-and-bracing.dxf`: crown datum, bracing layout, and
  measurement points for pre/post tension crown checks.
- `GUZ-REF-21-03-string-path.dxf`: nut, bridge corridor, string path, anchor
  geometry, and clearance zones.
- `GUZ-REF-21-04-bridge-template.dxf`: bridge-foot template and travel envelope.
- `GUZ-FAMILY-00-overview.dxf`: compact/reference/bass comparison sheet, marked
  non-authoritative for compact and bass until the reference gate passes.

## Layer Contract

| Layer | Purpose |
| --- | --- |
| `CUT_OUTLINE` | Cut paths for reviewed reference-member geometry only. |
| `DATUM` | Centerline, scale bar, bridge corridor datums, crown measurement points. |
| `NO_CUT_REFERENCE` | Compact and bass family silhouettes or planning references. |
| `LOAD_PATH` | String load path, end-block interfaces, pins, and rim transfer paths. |
| `BRIDGE_CORRIDOR` | Allowed bridge travel, clearance, and foot-contact envelope. |
| `NOTES` | Readiness and reviewer notes. |

## Terminology Callouts

Use `reference-notes/guzhengalive-terminology.md` as the label vocabulary for
review drawings. At minimum, the reviewed DXF/CAD package should make these
labels unambiguous:

- Dragon/head end and Phoenix/tail end orientation.
- Soundboard/faceboard versus backboard.
- Fixed bridges/high mountains versus movable bridges/pillars.
- Mountain pass/front bridge versus rear bridge.
- Tuning box, tuning pins, peg board, string rests/nuts, and string guides.
- Dragon pond, celestial pond, phoenix eyes, or other sound-hole labels only
  when the reviewed reference layout actually includes those openings.
- Frame, side boards, and sound beams/posts as load-path and support elements.

## Authority Rules

- The reference member DXF/CAD package governs fabrication after review.
- Compact and bass geometry is planning context until `validation.csv` shows
  all blocking reference gates passed.
- Generated bitmap or concept art must never be traced for cut geometry.
