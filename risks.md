# Guzheng Reference Family Risks

## Fabrication Risks

- **String load underestimated:** can damage end blocks, rim, or soundboard.
  Mitigation: complete `GZ-REF-STRING-SCHEDULE` and `GZ-REF-LOAD` before
  tensioning.
- **Crown collapse or creep:** can make bridge setup unstable and invalidate
  family scaling. Mitigation: complete staged crown and creep logs before
  compact or bass promotion.
- **Bridge corridor too narrow:** can make the instrument unplayable even if
  body geometry looks correct. Mitigation: prove travel with physical bridge
  templates.
- **Generated-image drift:** concept images can smuggle in false dimensions.
  Mitigation: enforce `visual-output-register.csv` and the concept-only caption.

## Review Risks

- Prior Round 8 artifact files were not available in this environment, so this
  patch carries forward issue-level contract terms only.
- The packet is intentionally L2 scaffold; reviewers should not expect cut-ready
  dimensions until the reference member gets DXF/CAD and measurement data.

## Stop/Go Rule

The only acceptable first physical work is the reference member and its
measurement templates. Compact and bass variants are no-go until the reference
validation gates pass.
