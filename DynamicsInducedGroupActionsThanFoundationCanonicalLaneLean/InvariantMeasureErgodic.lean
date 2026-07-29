import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.DynamicalSystemGroupAction

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure InvariantMeasureErgodicPackage {D : DynamicalSystemGroupActionPackage} where
  measureSpace : D.spaceType → Set (D.spaceType → ℝ)
  invariantMeasure : Prop
  ergodicity : Prop
  measurePreserving : Prop
  uniqueErgodic : Prop

structure InvariantMeasureErgodicEvidence {D : DynamicalSystemGroupActionPackage}
    (I : InvariantMeasureErgodicPackage D) where
  invariantMeasureClosed : I.invariantMeasure
  ergodicityClosed : I.ergodicity
  measurePreservingClosed : I.measurePreserving
  uniqueErgodicClosed : I.uniqueErgodic

def InvariantMeasureErgodicClosed {D : DynamicalSystemGroupActionPackage}
    (I : InvariantMeasureErgodicPackage D) : Prop :=
  I.invariantMeasure ∧ I.ergodicity ∧ I.measurePreserving ∧ I.uniqueErgodic

theorem invariant_measure_ergodic_closed_from_evidence
    {D : DynamicalSystemGroupActionPackage} (I : InvariantMeasureErgodicPackage D)
    (E : InvariantMeasureErgodicEvidence I) : InvariantMeasureErgodicClosed I := by
  exact And.intro E.invariantMeasureClosed
    (And.intro E.ergodicityClosed
      (And.intro E.measurePreservingClosed E.uniqueErgodicClosed))

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse