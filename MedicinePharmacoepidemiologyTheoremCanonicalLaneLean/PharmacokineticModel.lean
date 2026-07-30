import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  volumeOfDistribution : ℝ → ℝ
  eliminationRate : ℝ
  absorptionRate : ℝ → ℝ
  initialDose : ℝ
  timeCourse : ℝ → ℝ

structure CompartmentEvidence (M : CompartmentModel) where
  volumePositive : ∀ t, M.volumeOfDistribution t > 0
  eliminationPositive : M.eliminationRate > 0
  absorptionIntegrable : ∀ t, M.absorptionRate t ≥ 0
  doseFinite : M.initialDose > 0

def CompartmentClosed (M : CompartmentModel) : Prop :=
  (∀ t, M.volumeOfDistribution t > 0) ∧ M.eliminationRate > 0 ∧ (∀ t, M.absorptionRate t ≥ 0) ∧ M.initialDose > 0

theorem compartment_closed_from_evidence (M : CompartmentModel) (E : CompartmentEvidence M) : CompartmentClosed M := by
  exact And.intro E.volumePositive (And.intro E.eliminationPositive (And.intro E.absorptionIntegrable E.doseFinite))

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse