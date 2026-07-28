import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String :=
  "base-properties-topological-spaces-canonical-lane"

def sourceDescription : String :=
  "Base Properties of Topological Spaces"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "classical source boundary",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate",
  certificateLane := "manifold_constrained",
  carriedRemainder := "carried remainder"
}

end BasePropertiesTopologicalSpacesCanonicalLaneLean
end HautevilleHouse