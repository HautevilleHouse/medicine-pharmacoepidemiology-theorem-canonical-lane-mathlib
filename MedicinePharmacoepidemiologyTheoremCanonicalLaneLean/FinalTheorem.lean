import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

def ConstrainedMedicationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medication_endgame (A : AdmissibleClass) : ConstrainedMedicationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse