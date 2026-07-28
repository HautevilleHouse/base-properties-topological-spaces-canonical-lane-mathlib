import canonicalLaneMathlib.AdmissibleClass
import BasePropertiesTopologicalSpacesCanonicalLaneLean.TopologyFoundation

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure CompactnessProperty (X : TopologicalObject) where
  compact : ∀ (F : Set (Set X.carrier)), (∀ S ∈ F, IsOpen S) → (⋃₀ F = Set.univ) → ∃ (G : Set (Set X.carrier)), G ⊆ F ∧ Set.Finite G ∧ ⋃₀ G = Set.univ

structure LindeloffProperty (X : TopologicalObject) where
  lindeloff : ∀ (F : Set (Set X.carrier)), (∀ S ∈ F, IsOpen S) → (⋃₀ F = Set.univ) → ∃ (G : Set (Set X.carrier)), G ⊆ F ∧ Set.Countable G ∧ ⋃₀ G = Set.univ

structure CompactnessPackage (X : TopologicalObject) where
  compact : CompactnessProperty X
  lindeloff : LindeloffProperty X

structure CompactnessEvidence (X : TopologicalObject) (P : CompactnessPackage X) where
  compact_closed : P.compact.compact
  lindeloff_closed : P.lindeloff.lindeloff

def CompactnessClosed (X : TopologicalObject) (P : CompactnessPackage X) : Prop :=
  P.compact.compact ∧ P.lindeloff.lindeloff

theorem compactness_closed_from_evidence (X : TopologicalObject) (P : CompactnessPackage X) (E : CompactnessEvidence X P) :
    CompactnessClosed X P := by
  exact And.intro E.compact_closed E.lindeloff_closed

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse