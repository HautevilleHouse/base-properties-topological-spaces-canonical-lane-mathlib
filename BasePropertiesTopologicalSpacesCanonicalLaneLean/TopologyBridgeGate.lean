import .TopologyAdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

def bridgeClosed (A : TopologyAdmissibleClass) : Prop :=
  A.object.basePropertiesSatisfied

theorem bridge_from_admissible_class (A : TopologyAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : TopologyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : TopologyAdmissibleClass) : gateClosed A :=
  A.gateWitness

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse