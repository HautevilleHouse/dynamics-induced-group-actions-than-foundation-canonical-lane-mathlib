import DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.DynamicsInducedActionPackage

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure ErgodicDecompositionPackage {M : DynamicsSpace}
    (P : DynamicsInducedActionPackage M) where
  invariantMeasureSpace : Type u
  ergodicComponentsCollection : Prop
  decompositionUnique : Prop
  measurablePartition : Prop

structure ErgodicDecompositionEvidence {M : DynamicsSpace}
    {P : DynamicsInducedActionPackage M}
    (E : ErgodicDecompositionPackage P) where
  ergodicComponentsCollectionClosed : E.ergodicComponentsCollection
  decompositionUniqueClosed : E.decompositionUnique
  measurablePartitionClosed : E.measurablePartition

def ErgodicDecompositionClosed {M : DynamicsSpace}
    {P : DynamicsInducedActionPackage M}
    (E : ErgodicDecompositionPackage P) : Prop :=
  E.ergodicComponentsCollection ∧ E.decompositionUnique ∧ E.measurablePartition

theorem ergodic_decomposition_closed_from_evidence
    {M : DynamicsSpace} {P : DynamicsInducedActionPackage M}
    (E : ErgodicDecompositionPackage P)
    (Ev : ErgodicDecompositionEvidence E) : ErgodicDecompositionClosed E := by
  exact And.intro Ev.ergodicComponentsCollectionClosed
    (And.intro Ev.decompositionUniqueClosed Ev.measurablePartitionClosed)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse