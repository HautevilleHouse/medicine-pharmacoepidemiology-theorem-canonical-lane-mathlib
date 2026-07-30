import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyTheoremCanonicalLaneLean

structure PharmacoepidemiologyEndpoint where
  studyPopulation : Type u
  exposureDefinition : Prop
  outcomeDefinition : Prop
  confoundingControl : Prop
  statisticalMethod : Prop
  riskRatio : Prop
  causalInterpretation : Prop

structure PharmacoepidemiologyEndpointEvidence (E : PharmacoepidemiologyEndpoint) where
  exposureDefinitionClosed : E.exposureDefinition
  outcomeDefinitionClosed : E.outcomeDefinition
  confoundingControlClosed : E.confoundingControl
  statisticalMethodClosed : E.statisticalMethod
  riskRatioClosed : E.riskRatio
  causalInterpretationClosed : E.causalInterpretation

def PharmacoepidemiologyEndpointClosed (E : PharmacoepidemiologyEndpoint) : Prop :=
  E.exposureDefinition ∧ E.outcomeDefinition ∧ E.confoundingControl ∧ E.statisticalMethod ∧ E.riskRatio ∧ E.causalInterpretation

theorem pharmacoepidemiology_endpoint_closed_from_evidence (E : PharmacoepidemiologyEndpoint) (Ev : PharmacoepidemiologyEndpointEvidence E) : PharmacoepidemiologyEndpointClosed E :=
  And.intro Ev.exposureDefinitionClosed
    (And.intro Ev.outcomeDefinitionClosed
      (And.intro Ev.confoundingControlClosed
        (And.intro Ev.statisticalMethodClosed
          (And.intro Ev.riskRatioClosed Ev.causalInterpretationClosed))))

end MedicinePharmacoepidemiologyTheoremCanonicalLaneLean
end HautevilleHouse