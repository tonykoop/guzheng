# Visual BOM Brief

## Goal

Create a reference-member visual BOM that helps a reviewer see the build system
without implying fabrication authority.

## Required Items

### DXF Authority Targets (measurement-gated — do not create until reviewed)

These paths are planned fabrication-review targets. They must not be created
from concept art or rough measurements. Each requires reviewed CAD/DXF input
or a measured physical template before the file is produced.

| Artifact ID | Path | Gate |
|---|---|---|
| GUZ-REF-DXF-01 | drawings/GUZ-REF-21-01-body-outline.dxf | measured template or reviewed CAD |
| GUZ-REF-DXF-02 | drawings/GUZ-REF-21-02-crown-and-bracing.dxf | measured template or reviewed CAD |
| GUZ-REF-DXF-03 | drawings/GUZ-REF-21-03-string-path.dxf | measured template or reviewed CAD |
| GUZ-REF-DXF-04 | drawings/GUZ-REF-21-04-bridge-template.dxf | measured template or reviewed CAD |
| GUZ-FAMILY-DXF-00 | drawings/GUZ-FAMILY-00-overview.dxf | reference gate must pass first |

### Concept Image Deliverables (renderable — concept caption required)

These paths are communication deliverables that can be illustrated at any time.
Each rendered image must carry the concept-only caption below. They carry no
fabrication authority.

| Artifact ID | Path | Caption required |
|---|---|---|
| GUZ-REF-BOM-CONCEPT | visuals/guzheng-reference-visual-bom.png | yes |
| GUZ-FAMILY-CONCEPT | visuals/guzheng-family-overview.png | yes |

### Physical BOM Items (for visual BOM plate content)

- Reference soundboard blank with measurement points.
- Rim and end-block stock.
- Bridge template set.
- String set or individual string samples.
- Crown measurement fixture.
- Humidity and temperature logger.
- Reviewed DXF/CAD screenshots once available.

## Caption Policy

Generated or speculative imagery must be captioned:

`CONCEPT ONLY - fabrication authority is reviewed DXF/CAD or measured template.`

## Layout

- Left: reference member plan view with bridge corridor highlighted.
- Center: validation tools and hold points.
- Right: blocked compact and bass family members with reference-gate warning.

Do not include private family/media/archive contents. Do not use generated
images for dimensions, bridge spacing, bracing, string path, or crown.
