(* Guzheng reference-member-first notebook starter.
   Readiness: L2 scaffold. Replace TBD values with measured reference data
   before deriving compact or bass variants. *)

ClearAll["Global`*"];

referenceMember = <|
  "Id" -> "GUZ-REF-21",
  "Role" -> "reference member",
  "Readiness" -> "L2 V5 build-packet candidate"
|>;

validationGates = {
  "GZ-REF-DXF-AUTHORITY",
  "GZ-REF-STRING-SCHEDULE",
  "GZ-REF-LOAD",
  "GZ-REF-CROWN",
  "GZ-REF-CREEP",
  "GZ-REF-BRIDGE-CORRIDOR",
  "GZ-REF-VISUAL-AUTHORITY",
  "GZ-REF-BRIDGE-STIFFNESS"
};

(* Replace these with measured or reviewed values. *)
stringTensionsLbf = {};
crownBeforeIn = Missing["NotMeasured"];
crownAfterStagedTensionIn = Missing["NotMeasured"];
creepReadingsIn = <|"1h" -> Missing["NotMeasured"],
  "24h" -> Missing["NotMeasured"],
  "7d" -> Missing["NotMeasured"],
  "30d" -> Missing["NotMeasured"]|>;

aggregateStringLoadLbf[tensions_List] := Total[tensions];

stringTensionNewton[lengthMm_, frequencyHz_, linearDensityKgPerM_] :=
  Module[{lengthM = lengthMm/1000.0},
    4.0*linearDensityKgPerM*lengthM^2*frequencyHz^2
  ];

bridgeDownforceNewton[stringTensionN_, breakAngleDegrees_] :=
  2.0*stringTensionN*Sin[(breakAngleDegrees*Degree)/2.0];

deflectionEstimateMm[forceN_, stiffnessNPerMm_] :=
  If[stiffnessNPerMm <= 0,
    Missing["stiffness-required"],
    forceN/stiffnessNPerMm
  ];

referenceGateReadyQ[gateResults_Association] :=
  And @@ (Lookup[gateResults, #, False] & /@ validationGates);

sampleBridgeStudyRows = {
  <|"course" -> "bass-sample", "speakingLengthMm" -> Missing["measure-speaking-length"],
    "frequencyHz" -> Missing["record-target-pitch"],
    "linearDensityKgPerM" -> Missing["measure-string-unit-mass"],
    "breakAngleDegrees" -> Missing["measure-break-angle"],
    "topStiffnessNPerMm" -> Missing["measure-local-top-stiffness"]|>,
  <|"course" -> "mid-sample", "speakingLengthMm" -> Missing["measure-speaking-length"],
    "frequencyHz" -> Missing["record-target-pitch"],
    "linearDensityKgPerM" -> Missing["measure-string-unit-mass"],
    "breakAngleDegrees" -> Missing["measure-break-angle"],
    "topStiffnessNPerMm" -> Missing["measure-local-top-stiffness"]|>,
  <|"course" -> "treble-sample", "speakingLengthMm" -> Missing["measure-speaking-length"],
    "frequencyHz" -> Missing["record-target-pitch"],
    "linearDensityKgPerM" -> Missing["measure-string-unit-mass"],
    "breakAngleDegrees" -> Missing["measure-break-angle"],
    "topStiffnessNPerMm" -> Missing["measure-local-top-stiffness"]|>
};

(* Compact and bass derivation is blocked until referenceGateReadyQ returns True. *)
