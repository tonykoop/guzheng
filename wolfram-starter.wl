(* Guzheng reference-member-first notebook starter.
   Readiness: L2 scaffold. Replace TBD values with measured reference data
   before deriving compact or bass variants. *)

ClearAll["Global`*"];

referenceMember = <|
  "Id" -> "GUZ-REF-21",
  "Role" -> "reference member",
  "Readiness" -> "L2 prototype scaffold"
|>;

validationGates = {
  "GZ-REF-DXF-AUTHORITY",
  "GZ-REF-STRING-SCHEDULE",
  "GZ-REF-LOAD",
  "GZ-REF-CROWN",
  "GZ-REF-CREEP",
  "GZ-REF-BRIDGE-CORRIDOR",
  "GZ-REF-VISUAL-AUTHORITY"
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

referenceGateReadyQ[gateResults_Association] :=
  And @@ (Lookup[gateResults, #, False] & /@ validationGates);

(* Compact and bass derivation is blocked until referenceGateReadyQ returns True. *)
