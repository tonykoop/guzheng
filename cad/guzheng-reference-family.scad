// Guzheng reference-family OpenSCAD gate scaffold.
// Status: L2 V5 build-packet candidate.
// This file intentionally renders no build geometry until reviewed dimensions
// are supplied from family-spec.csv, measured templates, or a design table.

measurement_gate_open = false;

reference_member_id = "GUZ-REF-21";
required_authority = [
  "measured body envelope",
  "reviewed bridge corridor",
  "measured string schedule",
  "reviewed crown and bracing plan"
];

module measurement_gate_notice() {
  echo(str(reference_member_id,
    " CAD scaffold is source-only; do not fabricate from placeholder values."));
  echo(required_authority);
}

module guzheng_reference_member() {
  assert(measurement_gate_open,
    "Measurement gate is closed: supply reviewed dimensions before rendering.");
}

measurement_gate_notice();
if (measurement_gate_open) {
  guzheng_reference_member();
}
