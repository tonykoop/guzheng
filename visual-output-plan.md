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

`visual-output-register.csv` contains two distinct planned-row classes, kept
separate so a file-existence audit cannot conflate them:

### Class A — Planned DXF Authority (`planned_gate=measurement_required`)

- `row_category`: `planned_dxf_authority` or `planned_context_dxf`
- `artifact_status`: `planned_missing`
- These rows describe future fabrication review targets. The path will not
  exist until measured templates or reviewed CAD/DXF input is available.
- A missing path audit must **not** treat these as failures; they are gated.
- `caption_required=no` because DXF files are not communication deliverables.
- Fabrication authority becomes active only after measured templates, reviewed
  CAD/DXF, or reviewed design-table evidence passes the reference gate.

### Class B — Concept Image Deliverables (`planned_gate=none`)

- `row_category`: `concept_image_deliverable`
- `artifact_status`: `concept_planned`
- `deliverable_status`: `concept_image_presentation`
- These rows describe communication deliverables that can be rendered at any
  time as concept illustrations.
- A missing path audit must **not** treat these as failures; they are planned
  targets, not current deliverables (`path_required_now=no`).
- `caption_required=yes`; the rendered image must carry the concept-only caption.
- `authority=concept_only`, `dimension_claim=none` — must never be used as
  fabrication authority for body dimensions, bridge spacing, bracing, or crown.

### Shared rules

- `path_required_now=no` means the path is a future target. Only
  `path_required_now=yes` rows should fail a current path-existence audit.
- `planned_gate` distinguishes the two classes: `measurement_required` (Class A)
  vs `none` (Class B). Auditors must branch on this field before flagging a
  missing path as an error.

## First Visual Set

1. DXF screenshot of `GUZ-REF-21` body outline and bridge corridor.
2. Visual BOM plate with measurement tools and bridge templates.
3. Family overview labeled `compact and bass blocked pending reference gate`.
