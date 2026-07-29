import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.GroupActionStructures

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure TopologicalDynamicsPackage {G : GroupActionSystem} where
  minimalSubsets : Prop
  topologicalEntropy : Prop
  shadowingProperty : Prop

structure TopologicalDynamicsEvidence {G : GroupActionSystem} (P : TopologicalDynamicsPackage G) where
  minimalSubsetsClosed : P.minimalSubsets
  topologicalEntropyClosed : P.topologicalEntropy
  shadowingPropertyClosed : P.shadowingProperty

def TopologicalDynamicsClosed {G : GroupActionSystem} (P : TopologicalDynamicsPackage G) : Prop :=
  P.minimalSubsets ∧ P.topologicalEntropy ∧ P.shadowingProperty

theorem topological_dynamics_closed_from_evidence
    {G : GroupActionSystem} (P : TopologicalDynamicsPackage G)
    (E : TopologicalDynamicsEvidence P) : TopologicalDynamicsClosed P := by
  exact And.intro E.minimalSubsetsClosed
    (And.intro E.topologicalEntropyClosed E.shadowingPropertyClosed)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse