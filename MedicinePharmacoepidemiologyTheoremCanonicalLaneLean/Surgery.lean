import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure SurgeryPackage {D : DiagnosticInferencePackage} {P : PharmacokineticPackage D} (S : SurvivalAnalysisPackage P) where
  surgeryTimesDiscrete : Prop
  postSurgeryStatusControlled : Prop
  hazardRateControlled : Prop
  survivalFunctionMaintained : Prop

structure SurgeryEvidence {D : DiagnosticInferencePackage} {P : PharmacokineticPackage D} {S : SurvivalAnalysisPackage P} (U : SurgeryPackage S) where
  surgeryTimesDiscreteClosed : U.surgeryTimesDiscrete
  postSurgeryStatusControlledClosed : U.postSurgeryStatusControlled
  hazardRateControlledClosed : U.hazardRateControlled
  survivalFunctionMaintainedClosed : U.survivalFunctionMaintained

def SurgeryClosed {D : DiagnosticInferencePackage} {P : PharmacokineticPackage D} {S : SurvivalAnalysisPackage P} (U : SurgeryPackage S) : Prop :=
  U.surgeryTimesDiscrete ∧ U.postSurgeryStatusControlled ∧ U.hazardRateControlled ∧ U.survivalFunctionMaintained

theorem surgery_closed_from_evidence {D : DiagnosticInferencePackage} {P : PharmacokineticPackage D} {S : SurvivalAnalysisPackage P} (U : SurgeryPackage S) (E : SurgeryEvidence U) : SurgeryClosed U := by
  exact And.intro E.surgeryTimesDiscreteClosed
    (And.intro E.postSurgeryStatusControlledClosed
      (And.intro E.hazardRateControlledClosed E.survivalFunctionMaintainedClosed))

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse