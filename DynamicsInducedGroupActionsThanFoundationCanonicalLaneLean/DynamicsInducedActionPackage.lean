import DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure DynamicsInducedActionPackage (M : DynamicsSpace) where
  group : Type
  groupTopology : TopologicalSpace group
  action : group → M.carrier → M.carrier
  actionContinuous : Continuous (Function.uncurry action)
  orbitStructure : Prop
  invariantMeasures : Prop
  ergodicComponents : Prop

structure DynamicsInducedActionEvidence {M : DynamicsSpace}
    (P : DynamicsInducedActionPackage M) where
  orbitStructureClosed : P.orbitStructure
  invariantMeasuresClosed : P.invariantMeasures
  ergodicComponentsClosed : P.ergodicComponents

def DynamicsInducedActionClosed {M : DynamicsSpace}
    (P : DynamicsInducedActionPackage M) : Prop :=
  P.orbitStructure ∧ P.invariantMeasures ∧ P.ergodicComponents

theorem dynamics_induced_action_closed_from_evidence
    {M : DynamicsSpace} (P : DynamicsInducedActionPackage M)
    (E : DynamicsInducedActionEvidence P) : DynamicsInducedActionClosed P := by
  exact And.intro E.orbitStructureClosed
    (And.intro E.invariantMeasuresClosed E.ergodicComponentsClosed)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse