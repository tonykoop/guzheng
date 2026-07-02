# Guzheng Reference-Member-First Family Packet

Generated: 2026-05-10

Status: L2 V5 build-packet candidate

Readiness: `L2 V5 build-packet candidate`. This packet is not build-ready
until the reference member has measured dimensions, reviewed CAD/DXF or design
tables, and passed the validation gates in `validation.csv`.

## Quick Start

1. Read `design.md` before drafting CAD or cutting stock.
2. Treat `GUZ-REF-21` as the only first build.
3. Complete the reference-member gates in `validation.csv`.
4. Only after the reference member passes, revise compact and bass rows in
   `family-spec.csv`.
5. Use DXF/CAD/reviewed drawings as fabrication authority. Generated images
   are concept-only communication aids.

## Studio Explorer

Open `explorer.html` for a studio-facing digest of the packet evidence,
validation gates, OpenSCAD/Wolfram scaffolds, and current publish blockers.

## File Map

| File | Purpose |
| --- | --- |
| `design.md` | Packet intent, family split, authority rules, and reference gate. |
| `family-spec.csv` | Compact, reference, and bass family rows with inheritance blocked by default. |
| `validation.csv` | Pass/fail gates for crown, creep, bridge corridor, load, string schedule, and visual authority. |
| `bom.csv` | Measurement-first materials and tooling scaffold. |
| `sourcing.csv` | Make/buy/borrow sourcing scaffold with measurement dependencies. |
| `cut-list.csv` | Measurement placeholders for the reference member only. |
| `cad/guzheng-reference-family.scad` | Non-rendering OpenSCAD gate scaffold; not fabrication authority until measured parameters are supplied and reviewed. |
| `cad/mcp-session-log.md` | V5 provenance log for CAD/tool/Wolfram artifacts. |
| `drawing-brief.md` | DXF-first drawing plan and required layers. |
| `assembly-manual.md` | Hold-point sequence for reference-member setup. |
| `supplier-rfq.md` | RFQ scaffold that waits for reviewed drawings and string data. |
| `visual-bom-brief.md` | Visual BOM layout and concept-only caption policy. |
| `visual-output-plan.md` | Concept-image guidance without fabrication authority. |
| `visual-output-register.csv` | Visual authority register with planned DXF rows split from concept-image presentation rows. |
| `risks.md` | Load, crown, bridge-corridor, visual-authority, and review risks. |
| `guzheng-starter.wl` | Notebook scaffold for load, crown, and gate readiness checks. |
| `sources.md` | Provenance and missing-source notes. |
| `capstone-manifest.json` | Packet metadata and required file list for path checks. |
| `evolution/` | Stage 0 evolution-pipeline intake (master manifest, design intent, revision register). Gate A not yet run. |

## First Build Recommendation

Build `GUZ-REF-21` first as the reference member. Compact and bass variants are
family targets only; they inherit no bridge spacing, crown, bracing, string
load, or panel thickness until the reference member has measured evidence.

## Safety And Fabrication Gates

- Do not tension strings until the load-spread path is reviewed.
- Do not scale the soundboard crown from concept art.
- Do not render or cut from `cad/guzheng-reference-family.scad` until the
  measurement gate is deliberately opened with reviewed parameter authority.
- Do not use compact or bass member rows for fabrication until their
  `allowed_to_build` value changes from `no_reference_gate_pending`.
- Keep generated visual work outside the fabrication authority chain.
