(* Guzheng starter study: string tension, bridge placement, and top stiffness.
   Readiness: L1 starter only. Replace sample rows with measured values before
   using output for design decisions. *)

ClearAll[stringTensionNewton, deflectionEstimateMm, sampleCourses];

stringTensionNewton[lengthMm_, frequencyHz_, linearDensityKgPerM_] :=
  Module[{lengthM = lengthMm/1000.0},
    4.0*linearDensityKgPerM*lengthM^2*frequencyHz^2
  ];

deflectionEstimateMm[forceN_, stiffnessNPerMm_] :=
  If[stiffnessNPerMm <= 0, Missing["stiffness-required"], forceN/stiffnessNPerMm];

sampleCourses = {
  <|"course" -> "bass-sample", "lengthMm" -> 1250, "frequencyHz" -> 146.83,
    "linearDensityKgPerM" -> Missing["measure-string-unit-mass"],
    "topStiffnessNPerMm" -> Missing["measure-top-stiffness"]|>,
  <|"course" -> "mid-sample", "lengthMm" -> 950, "frequencyHz" -> 293.66,
    "linearDensityKgPerM" -> Missing["measure-string-unit-mass"],
    "topStiffnessNPerMm" -> Missing["measure-top-stiffness"]|>,
  <|"course" -> "treble-sample", "lengthMm" -> 700, "frequencyHz" -> 587.33,
    "linearDensityKgPerM" -> Missing["measure-string-unit-mass"],
    "topStiffnessNPerMm" -> Missing["measure-top-stiffness"]|>
};

studyRows = sampleCourses /. row_Association :>
   Append[row, "status" -> "sample-inputs-not-fabrication-authority"];

Print["guzheng starter study: sample rows only; not fabrication authority"];
Print[Dataset[studyRows]];
