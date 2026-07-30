import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure PharmacokineticParameterPackage (M : CompartmentModelPackage) where
  absorptionRate : Float
  eliminationRate : Float
  volumeDistribution : Float
  clearance : Float
  halfLife : Float
  parametersConsistent : Prop

structure PharmacokineticParameterEvidence {M : CompartmentModelPackage}
    (P : PharmacokineticParameterPackage M) where
  parametersConsistentClosed : P.parametersConsistent

def PharmacokineticParameterClosed {M : CompartmentModelPackage}
    (P : PharmacokineticParameterPackage M) : Prop :=
  P.parametersConsistent

theorem pharmacokinetic_parameter_closed_from_evidence {M : CompartmentModelPackage}
    (P : PharmacokineticParameterPackage M) (E : PharmacokineticParameterEvidence P) :
    PharmacokineticParameterClosed P := by
  exact E.parametersConsistentClosed

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse