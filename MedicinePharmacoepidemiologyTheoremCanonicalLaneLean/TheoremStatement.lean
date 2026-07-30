import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure MedicineAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  endpointSatisfied : Prop
  remainderRecorded : Prop
  conclusion : endpointSatisfied ∨ remainderRecorded

def MedicineWitnessClosed (O : MedicineAdmittedObject) : Prop :=
  O.endpointSatisfied ∨ O.remainderRecorded

theorem medicine_witness_closed_from_object (O : MedicineAdmittedObject) :
    MedicineWitnessClosed O := by
  exact O.conclusion

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse