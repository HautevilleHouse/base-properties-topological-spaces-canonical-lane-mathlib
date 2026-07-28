import .TopologyBridgeGate

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

def ConstrainedTopologyClosure (A : TopologyAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topology_endgame (A : TopologyAdmissibleClass) : ConstrainedTopologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse