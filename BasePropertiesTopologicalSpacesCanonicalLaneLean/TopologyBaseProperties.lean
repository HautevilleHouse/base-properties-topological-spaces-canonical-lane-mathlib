import .TopologyAdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure SeparationPackage (T : TopologicalSpacePackage) where
  hausdorffProperty : Prop
  regularity : Prop
  normality : Prop

structure SeparationEvidence (T : TopologicalSpacePackage) (S : SeparationPackage T) where
  hausdorffPropertyClosed : S.hausdorffProperty
  regularityClosed : S.regularity
  normalityClosed : S.normality

def SeparationClosed (T : TopologicalSpacePackage) (S : SeparationPackage T) : Prop :=
  S.hausdorffProperty ∧ S.regularity ∧ S.normality

theorem separation_closed_from_evidence (T : TopologicalSpacePackage) (S : SeparationPackage T) (E : SeparationEvidence T S) : SeparationClosed T S :=
  And.intro E.hausdorffPropertyClosed (And.intro E.regularityClosed E.normalityClosed)

structure CompactnessPackage (T : TopologicalSpacePackage) where
  finiteIntersectionProperty : Prop
  heineBorelProperty : Prop

structure CompactnessEvidence (T : TopologicalSpacePackage) (C : CompactnessPackage T) where
  finiteIntersectionPropertyClosed : C.finiteIntersectionProperty
  heineBorelPropertyClosed : C.heineBorelProperty

def CompactnessClosed (T : TopologicalSpacePackage) (C : CompactnessPackage T) : Prop :=
  C.finiteIntersectionProperty ∧ C.heineBorelProperty

theorem compactness_closed_from_evidence (T : TopologicalSpacePackage) (C : CompactnessPackage T) (E : CompactnessEvidence T C) : CompactnessClosed T C :=
  And.intro E.finiteIntersectionPropertyClosed E.heineBorelPropertyClosed

structure ConnectednessPackage (T : TopologicalSpacePackage) where
  clopenSetProperty : Prop
  pathConnectedImpliesConnected : Prop

structure ConnectednessEvidence (T : TopologicalSpacePackage) (C : ConnectednessPackage T) where
  clopenSetPropertyClosed : C.clopenSetProperty
  pathConnectedImpliesConnectedClosed : C.pathConnectedImpliesConnected

def ConnectednessClosed (T : TopologicalSpacePackage) (C : ConnectednessPackage T) : Prop :=
  C.clopenSetProperty ∧ C.pathConnectedImpliesConnected

theorem connectedness_closed_from_evidence (T : TopologicalSpacePackage) (C : ConnectednessPackage T) (E : ConnectednessEvidence T C) : ConnectednessClosed T C :=
  And.intro E.clopenSetPropertyClosed E.pathConnectedImpliesConnectedClosed

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse