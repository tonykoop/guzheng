# MCP Session Log

This V5 starter records provenance for tool-shaped artifacts in this packet.
It does not make any artifact build-ready. CAD/DXF review, measurement, and
shop setup checks remain required before fabrication.

| timestamp | tool | artifact | session_id | parent_artifact | authority | notes |
| --- | --- | --- | --- | --- | --- | --- |
| 2026-05-17T16:50:00Z | openscad | cad/guzheng-reference-family.scad | unknown | family-spec.csv | analysis_only | Source-only scaffold; render gate closed pending measured values. |
| 2026-07-01T00:00:00Z | openscad | cad/guzheng-reference-family.scad | fable-v5-refresh-2026-07-01 | family-spec.csv | analysis_only | V5 refresh: kept as-is (no rewrite). OpenSCAD parse/CSG export check pass (exit 0); STL export is intentionally empty (measurement_gate_open=false) — source-only gate, not a defect. |
| 2026-05-17T16:50:00Z | wolfram | guzheng-starter.wl | unknown | validation.csv | analysis_only | Source-only string bridge stiffness starter; not executed in this change. |
