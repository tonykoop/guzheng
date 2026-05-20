# Guzheng Visual Output Plan

## Goal

Support the guzheng family packet with visual communication while keeping DXF,
CAD, measured templates, and validation logs as the only fabrication authority.

## Allowed Visual Uses

- Family overview for compact, reference, and bass concepts.
- Visual BOM showing the reference body, bridge templates, string set,
  measurement tools, and humidity logger.
- Build-log photos after reference construction starts.
- Annotated screenshots of reviewed DXF/CAD.

## Disallowed Visual Uses

- Deriving body dimensions, bridge spacing, bracing, string path, or crown from
  generated images.
- Treating concept art as evidence that the compact or bass variant is ready.
- Publishing private family/media/archive contents as visual references.

## Required Captions

Generated or speculative images must include this caption:

`CONCEPT ONLY - fabrication authority is reviewed DXF/CAD or measured template.`

## Register Status Rules

- Planned DXF/CAD rows stay separate from concept-image rows in
  `visual-output-register.csv`.
- `planned_dxf_authority` rows describe missing review targets, not active cut
  authority.
- `concept_image_presentation` rows are communication deliverables only and must
  keep `authority=concept_only`, `dimension_claim=none`, and the concept-only
  caption.
- `row_category` must distinguish `planned_dxf_authority`,
  `planned_context_dxf`, and `concept_image_deliverable` so a file-existence
  audit does not conflate missing future DXF authority with missing concept
  image deliverables.
- `path_required_now=no` means the path is a future target, not a current
  deliverable. Only rows with `path_required_now=yes` should fail a current
  path-existence audit when their `path` is missing.
- Fabrication authority becomes active only after measured templates, reviewed
  CAD/DXF, or reviewed design-table evidence exists.

## First Visual Set

1. DXF screenshot of `GUZ-REF-21` body outline and bridge corridor.
2. Visual BOM plate with measurement tools and bridge templates.
3. Family overview labeled `compact and bass blocked pending reference gate`.
