import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure PharmacokineticsPKPDPackage where
  absorptionModel : Prop
  distributionModel : Prop
  eliminationModel : Prop
  concentrationTimeCurve : Prop
  effectModel : Prop

structure PharmacokineticsPKPDEvidence (P : PharmacokineticsPKPDPackage) where
  absorptionModelClosed : P.absorptionModel
  distributionModelClosed : P.distributionModel
  eliminationModelClosed : P.eliminationModel
  concentrationTimeCurveClosed : P.concentrationTimeCurve
  effectModelClosed : P.effectModel

def PharmacokineticsPKPDClosed (P : PharmacokineticsPKPDPackage) : Prop :=
  P.absorptionModel ∧ P.distributionModel ∧ P.eliminationModel ∧
  P.concentrationTimeCurve ∧ P.effectModel

theorem pharmacokinetics_pkpd_closed_from_evidence (P : PharmacokineticsPKPDPackage)
    (E : PharmacokineticsPKPDEvidence P) : PharmacokineticsPKPDClosed P := by
  exact And.intro E.absorptionModelClosed
    (And.intro E.distributionModelClosed
      (And.intro E.eliminationModelClosed
        (And.intro E.concentrationTimeCurveClosed E.effectModelClosed)))

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse