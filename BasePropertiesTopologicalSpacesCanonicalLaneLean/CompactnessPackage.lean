import BasePropertiesTopologicalSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure CompactnessPackage where
  finiteSubcoverProperty : Prop
  limitPointCompact : Prop
  sequentialCompact : Prop
  heineBorel : Prop

structure CompactnessEvidence (C : CompactnessPackage) where
  finiteSubcoverPropertyClosed : C.finiteSubcoverProperty
  limitPointCompactClosed : C.limitPointCompact
  sequentialCompactClosed : C.sequentialCompact
  heineBorelClosed : C.heineBorel

def CompactnessClosed (C : CompactnessPackage) : Prop :=
  C.finiteSubcoverProperty ∧ C.limitPointCompact ∧
  C.sequentialCompact ∧ C.heineBorel

theorem compactness_closed_from_evidence (C : CompactnessPackage)
    (E : CompactnessEvidence C) : CompactnessClosed C := by
  exact And.intro E.finiteSubcoverPropertyClosed
    (And.intro E.limitPointCompactClosed
      (And.intro E.sequentialCompactClosed E.heineBorelClosed))

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse