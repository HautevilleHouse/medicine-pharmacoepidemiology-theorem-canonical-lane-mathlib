import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

def PharmacoepidemiologyAdmissibleClass (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∧ A.remainderRecorded

theorem pharmacoepidemiology_endgame (A : AdmissibleClass) :
    (bridgeClosed A ∧ gateClosed A) → PharmacoepidemiologyAdmissibleClass A := by
  intro h
  rcases h with ⟨hb, hg⟩
  exact ⟨hg, hg⟩

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse