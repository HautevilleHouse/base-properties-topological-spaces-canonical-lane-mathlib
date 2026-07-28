import canonicalLaneMathlib.AdmissibleClass
import BasePropertiesTopologicalSpacesCanonicalLaneLean.TopologyFoundation

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure T0Property (X : TopologicalObject) where
  t0 : ∀ x y : X.carrier, x ≠ y → ∃ U ∈ X.topology, (x ∈ U ∧ y ∉ U) ∨ (x ∉ U ∧ y ∈ U)

structure T1Property (X : TopologicalObject) where
  t1 : ∀ x : X.carrier, {x}ᶜ ∈ X.topology

structure T2Property (X : TopologicalObject) where
  hausdorff : ∀ x y : X.carrier, x ≠ y → ∃ U V : Set X.carrier, U ∈ X.topology ∧ V ∈ X.topology ∧ x ∈ U ∧ y ∈ V ∧ U ∩ V = ∅

structure T3Property (X : TopologicalObject) where
  regular : ∀ (C : Set X.carrier) (x : X.carrier), IsClosed C → x ∉ C → ∃ U V : Set X.carrier, U ∈ X.topology ∧ V ∈ X.topology ∧ C ⊆ U ∧ x ∈ V ∧ U ∩ V = ∅

structure T4Property (X : TopologicalObject) where
  normal : ∀ (C D : Set X.carrier), IsClosed C → IsClosed D → C ∩ D = ∅ → ∃ U V : Set X.carrier, U ∈ X.topology ∧ V ∈ X.topology ∧ C ⊆ U ∧ D ⊆ V ∧ U ∩ V = ∅

structure SeparationAxiomsPackage (X : TopologicalObject) where
  t0 : T0Property X
  t1 : T1Property X
  t2 : T2Property X
  t3 : T3Property X
  t4 : T4Property X

structure SeparationAxiomsEvidence (X : TopologicalObject) (P : SeparationAxiomsPackage X) where
  t0_closed : P.t0.t0
  t1_closed : P.t1.t1
  t2_closed : P.t2.hausdorff
  t3_closed : P.t3.regular
  t4_closed : P.t4.normal

def SeparationAxiomsClosed (X : TopologicalObject) (P : SeparationAxiomsPackage X) : Prop :=
  P.t0.t0 ∧ P.t1.t1 ∧ P.t2.hausdorff ∧ P.t3.regular ∧ P.t4.normal

theorem separation_axioms_closed_from_evidence (X : TopologicalObject) (P : SeparationAxiomsPackage X) (E : SeparationAxiomsEvidence X P) :
    SeparationAxiomsClosed X P := by
  exact And.intro E.t0_closed (And.intro E.t1_closed (And.intro E.t2_closed (And.intro E.t3_closed E.t4_closed)))

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse