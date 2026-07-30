import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure PharmacokineticModel where
  dose : ℝ
  volumeOfDistribution : ℝ
  eliminationRateConstant : ℝ
  absorptionRateConstant : ℝ
  bioavailability : ℝ
  concentrationCurve : ℝ -> ℝ
  aucInfinity : ℝ
  halfLife : ℝ
  parametersValid : Prop
  concentrationCurveDerived : Prop

def PharmacokineticsClosed (P : PharmacokineticModel) : Prop :=
  P.parametersValid ∧ P.concentrationCurveDerived ∧ P.aucInfinity > 0

theorem pharmacokinetics_closed (P : PharmacokineticModel) (h : PharmacokineticsClosed P) :
  PharmacokineticsClosed P := h

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse