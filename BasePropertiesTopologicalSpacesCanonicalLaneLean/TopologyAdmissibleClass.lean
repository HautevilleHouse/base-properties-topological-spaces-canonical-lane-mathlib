import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure TopologicalSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  openSetUnionClosed : Prop
  openSetIntersectionClosed : Prop
  emptyAndWholeOpen : Prop

structure TopologyAdmittedObject where
  space : TopologicalSpacePackage
  basePropertiesSatisfied : Prop
  conclusion : basePropertiesSatisfied

structure TopologyAdmissibleClass where
  object : TopologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : TopologyAdmissibleClass) : Prop :=
  TopologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse