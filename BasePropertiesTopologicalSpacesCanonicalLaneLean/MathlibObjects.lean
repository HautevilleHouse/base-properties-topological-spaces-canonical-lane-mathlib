import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

open scoped Topology

structure TopologicalSpaceObject where
  carrier : Type
  topology : TopologicalSpace carrier

structure TopologicalAdmittedObject where
  space : TopologicalSpaceObject
  isHausdorff : Prop
  conclusion : isHausdorff

structure TopologicalEndgameState where
  object : TopologicalAdmittedObject

def TopologicalWitnessClosed (O : TopologicalAdmittedObject) : Prop :=
  O.isHausdorff

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse