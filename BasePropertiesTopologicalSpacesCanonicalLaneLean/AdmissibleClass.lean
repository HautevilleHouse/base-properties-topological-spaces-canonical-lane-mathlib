import canonicalLaneMathlib.AdmissibleClass
import BasePropertiesTopologicalSpacesCanonicalLaneLean.TopologyFoundation

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure TopologicalAdmittedObject where
  object : TopologicalObject
  compact : CompactnessProperties.CompactnessPackage object
  connected : ConnectednessProperties.ConnectednessPackage object
  separation : SeparationAxioms.SeparationAxiomsPackage object
  closureCondition : Prop
  closureWitness : closureCondition

structure AdmissibleClass where
  object : TopologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.closureCondition ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse