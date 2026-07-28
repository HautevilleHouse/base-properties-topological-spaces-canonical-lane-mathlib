import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure TopologicalObject where
  carrier : Type u
  topology : TopologicalSpace carrier

structure TopologicalProperty (X : TopologicalObject) where
  property : Prop
  witness : property

def TopologicalObjectProperty (X : TopologicalObject) : Type := TopologicalProperty X

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse