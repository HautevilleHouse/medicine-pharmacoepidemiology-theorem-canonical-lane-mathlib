import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : Prop
  survivalFunction : Prop
  coxModel : Prop
  kaplanMeierEstimator : Prop
  proportionalHazardsAssumption : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  hazardFunctionClosed : S.hazardFunction
  survivalFunctionClosed : S.survivalFunction
  coxModelClosed : S.coxModel
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  proportionalHazardsAssumptionClosed : S.proportionalHazardsAssumption

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.hazardFunction ∧ S.survivalFunction ∧ S.coxModel ∧
  S.kaplanMeierEstimator ∧ S.proportionalHazardsAssumption

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.hazardFunctionClosed
    (And.intro E.survivalFunctionClosed
      (And.intro E.coxModelClosed
        (And.intro E.kaplanMeierEstimatorClosed E.proportionalHazardsAssumptionClosed)))

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse