import canonicalLaneMathlib.AdmissibleClass
import BasePropertiesTopologicalSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure ConnectednessPackage where
  space : Type u
  topology : TopologicalSpace space
  connected : Prop
  pathConnected : Prop
  connectedEvidence : connected
  pathConnectedEvidence : pathConnected

structure ConnectednessEvidence (C : ConnectednessPackage) where
  connectedClosed : C.connected
  pathConnectedClosed : C.pathConnected

def ConnectednessClosed (C : ConnectednessPackage) : Prop :=
  C.connected ∧ C.pathConnected

theorem connectedness_closed_from_evidence (C : ConnectednessPackage)
    (E : ConnectednessEvidence C) : ConnectednessClosed C := by
  exact And.intro E.connectedClosed E.pathConnectedClosed

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse