import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure TopologicalPropertiesPackage where
  compactnessAxiom : Prop
  connectednessAxiom : Prop
  pathConnectednessAxiom : Prop
  lindelofProperty : Prop
  separableProperty : Prop

structure TopologicalPropertiesEvidence (P : TopologicalPropertiesPackage) where
  compactnessAxiomClosed : P.compactnessAxiom
  connectednessAxiomClosed : P.connectednessAxiom
  pathConnectednessAxiomClosed : P.pathConnectednessAxiom
  lindelofPropertyClosed : P.lindelofProperty
  separablePropertyClosed : P.separableProperty

def TopologicalPropertiesClosed (P : TopologicalPropertiesPackage) : Prop :=
  P.compactnessAxiom ∧ P.connectednessAxiom ∧ P.pathConnectednessAxiom ∧ P.lindelofProperty ∧ P.separableProperty

theorem topological_properties_closed_from_evidence (P : TopologicalPropertiesPackage) (E : TopologicalPropertiesEvidence P) :
    TopologicalPropertiesClosed P := by
  exact And.intro E.compactnessAxiomClosed
    (And.intro E.connectednessAxiomClosed
      (And.intro E.pathConnectednessAxiomClosed
        (And.intro E.lindelofPropertyClosed E.separablePropertyClosed)))

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse