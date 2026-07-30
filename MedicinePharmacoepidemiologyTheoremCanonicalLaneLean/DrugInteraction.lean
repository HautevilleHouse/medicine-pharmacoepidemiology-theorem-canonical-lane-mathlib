import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure DrugInteraction where
  drugA : String
  drugB : String
  inhibitionConstant : ℝ
  metabolicRatio : ℝ
  effectMagnitude : ℝ

structure InteractionEvidence (I : DrugInteraction) where
  inhibitionPositive : I.inhibitionConstant > 0
  ratioFinite : I.metabolicRatio ≠ 0
  effectComputed : I.effectMagnitude = I.metabolicRatio / (I.inhibitionConstant + I.metabolicRatio)

def InteractionClosed (I : DrugInteraction) : Prop :=
  I.inhibitionConstant > 0 ∧ I.metabolicRatio ≠ 0 ∧ I.effectMagnitude = I.metabolicRatio / (I.inhibitionConstant + I.metabolicRatio)

theorem interaction_closed_from_evidence (I : DrugInteraction) (E : InteractionEvidence I) : InteractionClosed I := by
  exact And.intro E.inhibitionPositive (And.intro E.ratioFinite E.effectComputed)

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse