import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  transferRates : String
  steadyStateCondition : Prop
  identifiabilityCondition : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  numCompartmentsClosed : C.numCompartments = 1 ∨ C.numCompartments = 2 ∨ C.numCompartments = 3
  transferRatesClosed : C.transferRates
  steadyStateConditionClosed : C.steadyStateCondition
  identifiabilityConditionClosed : C.identifiabilityCondition

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  (C.numCompartments = 1 ∨ C.numCompartments = 2 ∨ C.numCompartments = 3) ∧
  C.transferRates ∧ C.steadyStateCondition ∧ C.identifiabilityCondition

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.numCompartmentsClosed
    (And.intro E.transferRatesClosed
      (And.intro E.steadyStateConditionClosed E.identifiabilityConditionClosed))

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse