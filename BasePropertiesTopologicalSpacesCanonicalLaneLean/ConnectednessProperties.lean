import canonicalLaneMathlib.AdmissibleClass
import BasePropertiesTopologicalSpacesCanonicalLaneLean.TopologyFoundation

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure ConnectedProperty (X : TopologicalObject) where
  connected : (∀ U V : Set X.carrier, IsOpen U → IsOpen V → U ∪ V = Set.univ → U ∩ V = ∅ → (U = ∅) ∨ (V = ∅))

structure PathConnectedProperty (X : TopologicalObject) where
  pathConnected : ∀ x y : X.carrier, ∃ γ : ℝ → X.carrier, Continuous γ ∧ γ 0 = x ∧ γ 1 = y

structure ConnectednessPackage (X : TopologicalObject) where
  connected : ConnectedProperty X
  pathConnected : PathConnectedProperty X

structure ConnectednessEvidence (X : TopologicalObject) (P : ConnectednessPackage X) where
  connected_closed : P.connected.connected
  pathConnected_closed : P.pathConnected.pathConnected

def ConnectednessClosed (X : TopologicalObject) (P : ConnectednessPackage X) : Prop :=
  P.connected.connected ∧ P.pathConnected.pathConnected

theorem connectedness_closed_from_evidence (X : TopologicalObject) (P : ConnectednessPackage X) (E : ConnectednessEvidence X P) :
    ConnectednessClosed X P := by
  exact And.intro E.connected_closed E.pathConnected_closed

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse