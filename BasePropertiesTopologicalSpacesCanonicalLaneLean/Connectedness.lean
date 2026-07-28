import BasePropertiesTopologicalSpacesCanonicalLaneLean.MathlibObjects
import Mathlib.Topology.Connected.Basic

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure ConnectednessPackage where
  space : TopologicalSpaceObject
  isConnected : Prop
  clopenSetsTrivial : Prop
  pathConnected : Prop

structure ConnectednessEvidence (C : ConnectednessPackage) where
  isConnectedClosed : C.isConnected
  clopenSetsTrivialClosed : C.clopenSetsTrivial
  pathConnectedClosed : C.pathConnected

def ConnectednessClosed (C : ConnectednessPackage) : Prop :=
  C.isConnected ∧ C.clopenSetsTrivial ∧ C.pathConnected

theorem connectedness_closed_from_evidence (C : ConnectednessPackage) (E : ConnectednessEvidence C) : ConnectednessClosed C := by
  exact And.intro E.isConnectedClosed (And.intro E.clopenSetsTrivialClosed E.pathConnectedClosed)

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse