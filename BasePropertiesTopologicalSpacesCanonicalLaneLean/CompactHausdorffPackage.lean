import canonicalLaneMathlib.AdmissibleClass
import BasePropertiesTopologicalSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure CompactHausdorffPackage where
  space : Type u
  topology : TopologicalSpace space
  compact : Prop
  hausdorff : Prop
  compactEvidence : compact
  hausdorffEvidence : hausdorff

structure CompactHausdorffEvidence (C : CompactHausdorffPackage) where
  compactClosed : C.compact
  hausdorffClosed : C.hausdorff

def CompactHausdorffClosed (C : CompactHausdorffPackage) : Prop :=
  C.compact ∧ C.hausdorff

theorem compact_hausdorff_closed_from_evidence (C : CompactHausdorffPackage)
    (E : CompactHausdorffEvidence C) : CompactHausdorffClosed C := by
  exact And.intro E.compactClosed E.hausdorffClosed

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse