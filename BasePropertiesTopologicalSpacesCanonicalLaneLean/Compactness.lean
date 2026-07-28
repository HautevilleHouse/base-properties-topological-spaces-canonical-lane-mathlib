import BasePropertiesTopologicalSpacesCanonicalLaneLean.MathlibObjects
import Mathlib.Topology.Compactness.Basic

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure CompactnessPackage where
  space : TopologicalSpaceObject
  isCompact : Prop
  finiteIntersectionProperty : Prop
  openCoverHasFiniteSubcover : Prop

structure CompactnessEvidence (C : CompactnessPackage) where
  isCompactClosed : C.isCompact
  finiteIntersectionPropertyClosed : C.finiteIntersectionProperty
  openCoverHasFiniteSubcoverClosed : C.openCoverHasFiniteSubcover

def CompactnessClosed (C : CompactnessPackage) : Prop :=
  C.isCompact ∧ C.finiteIntersectionProperty ∧ C.openCoverHasFiniteSubcover

theorem compactness_closed_from_evidence (C : CompactnessPackage) (E : CompactnessEvidence C) : CompactnessClosed C := by
  exact And.intro E.isCompactClosed (And.intro E.finiteIntersectionPropertyClosed E.openCoverHasFiniteSubcoverClosed)

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse