import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure CausalInferenceModel where
  targetType : Type
  exposure : targetType -> ℝ
  outcome : targetType -> ℝ
  confoundingVariables : targetType -> Vector ℝ 5
  causalEffectEstimator : (targetType -> ℝ) -> ℝ
  confoundingControlVerified : Prop
  positivityCondition : Prop

def CausalInferenceClosed (C : CausalInferenceModel) : Prop :=
  C.confoundingControlVerified ∧ C.positivityCondition

theorem causal_inference_closed (C : CausalInferenceModel) (h : CausalInferenceClosed C) :
  CausalInferenceClosed C := h

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse