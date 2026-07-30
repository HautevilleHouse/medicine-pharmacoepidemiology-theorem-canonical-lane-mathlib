import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure MedicineAdmittedObject where
  studyDesign : Prop
  outcomeDefinition : Prop
  exposureDefinition : Prop
  confoundingControl : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : MedicineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse