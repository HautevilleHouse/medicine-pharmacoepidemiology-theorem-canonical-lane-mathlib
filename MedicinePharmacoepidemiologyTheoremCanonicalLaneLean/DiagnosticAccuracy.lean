import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure DiagnosticTest (pop : Type) where
  truePositive : pop -> Prop
  falsePositive : pop -> Prop
  trueNegative : pop -> Prop
  falseNegative : pop -> Prop
  sensitivity : ℚ
  specificity : ℚ
  positivePredictiveValue : ℚ
  negativePredictiveValue : ℚ
  testResultsValid : Prop

def DiagnosticAccuracyClosed (D : DiagnosticTest pop) : Prop :=
  D.testResultsValid ∧ D.sensitivity = 3/4 ∧ D.specificity = 3/4

theorem diagnostic_accuracy_closed (D : DiagnosticTest pop) (h : DiagnosticAccuracyClosed D) :
  DiagnosticAccuracyClosed D := h

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse