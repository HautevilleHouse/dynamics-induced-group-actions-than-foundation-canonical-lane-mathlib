import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure InvariantMeasurePackage {G : GroupActionSystem} where
  measureSpace : Type
u
  sigmaAlgebra : Set (Set measureSpace)
  measure : measureSpace → ℝ
  invariantUnderAction : Prop
  ergodicDecomposition : Prop

structure InvariantMeasureEvidence {G : GroupActionSystem} (P : InvariantMeasurePackage G) where
  invariantUnderActionClosed : P.invariantUnderAction
  ergodicDecompositionClosed : P.ergodicDecomposition

def InvariantMeasureClosed {G : GroupActionSystem} (P : InvariantMeasurePackage G) : Prop :=
  P.invariantUnderAction ∧ P.ergodicDecomposition

theorem invariant_measure_closed_from_evidence
    {G : GroupActionSystem} (P : InvariantMeasurePackage G)
    (E : InvariantMeasureEvidence P) : InvariantMeasureClosed P := by
  exact And.intro E.invariantUnderActionClosed E.ergodicDecompositionClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse