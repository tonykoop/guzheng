# Design Intent — guzheng rev A

- Master CAD: `cad/guzheng-reference-family.scad` (sha256: f6996f8ba88941b205718355387c06012377df68dd3b2a0346f42e4f5f95ae95) — a source-only measurement-gate scaffold that renders no build geometry; driven by `family-spec.csv` (sha256: ae6af8f087e2672e30b7af7b49e6663b92b42faa820cd50a21b227f580e13166).
- Function: Guzheng — a large plucked board zither with one moveable bridge per string; player setup depends on bridge-corridor geometry, string tension, soundboard crown, and panel response. This packet is a reference-member-first family (compact / reference / bass); only the reference member GUZ-REF-21 is a valid gated build. Compact and bass members are intentionally blocked until reference evidence exists — string load and panel response do not scale safely from a concept.
- Environment: indoor plucked instrument; cumulative string tension loads the end blocks, rim, and soundboard; crown creep destabilizes bridge setup over time.
- Target qty: 1 (reference-member prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

All build-ready dimensions are measurement-gated; none are promoted. The gates below are the intake's critical items.

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Body envelope | TBD | measure or reviewed DXF before cut | panel response / structure | family-spec.csv body_dimension_policy (GUZ-REF-21) |
| Soundboard crown | TBD | gate GZ-REF-CROWN | bridge setup stability | family-spec.csv soundboard_crown_policy; validation.csv |
| Bridge corridor | TBD | prove travel with physical templates | playability | family-spec.csv bridge_corridor_policy; risks.md |
| String schedule | TBD | GZ-REF-STRING-SCHEDULE | tension/pitch | family-spec.csv; risks.md |
| Load / creep | TBD | GZ-REF-LOAD + GZ-REF-CREEP | structural safety | family-spec.csv load_validation_policy |

## Incidental (free for DFM)

- Cosmetic surface treatment, decorative end-panel styling, concept-image presentation — none may introduce dimensions (concept-only caption enforced).

## Must-nots (DFM may never violate)

- Do not fabricate from the CAD scaffold's placeholder values — the measurement gate must be opened with measured/reviewed dimensions first (guzheng-reference-family.scad; register GUZ-REF-CAD-SCAFFOLD).
- Do not cut, crown, or promote the compact or bass members until the reference member GUZ-REF-21 passes all gates (family-spec.csv allowed_to_build).
- Do not tension strings before GZ-REF-STRING-SCHEDULE and GZ-REF-LOAD are complete (risks.md String load).
- Do not let concept/generated images smuggle in dimensions — enforce visual-output-register.csv and the concept-only caption (risks.md Generated-image drift).

## Material intent

- Preferred: measurement-first materials/tooling scaffold per bom.csv (make/buy/borrow with measurement dependencies). No committed material dimensions yet.
- Acceptable subs: per sourcing.csv (measurement-dependent).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable.
