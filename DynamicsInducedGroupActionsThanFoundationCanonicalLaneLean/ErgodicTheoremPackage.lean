import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.InvariantMeasures

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure ErgodicTheoremPackage {G : GroupActionSystem} (I : InvariantMeasurePackage G) where
  pointwiseErgodicTheorem : Prop
  meanErgodicTheorem : Prop
  uniqueErgodicity : Prop

structure ErgodicTheoremEvidence {G : GroupActionSystem} {I : InvariantMeasurePackage G}
    (P : ErgodicTheoremPackage I) where
  pointwiseErgodicTheoremClosed : P.pointwiseErgodicTheorem
  meanErgodicTheoremClosed : P.meanErgodicTheorem
  uniqueErgodicityClosed : P.uniqueErgodicity

def ErgodicTheoremClosed {G : GroupActionSystem} {I : InvariantMeasurePackage G}
    (P : ErgodicTheoremPackage I) : Prop :=
  P.pointwiseErgodicTheorem ∧ P.meanErgodicTheorem ∧ P.uniqueErgodicity

theorem ergodic_theorem_closed_from_evidence
    {G : GroupActionSystem} {I : InvariantMeasurePackage G}
    (P : ErgodicTheoremPackage I) (E : ErgodicTheoremEvidence P) :
    ErgodicTheoremClosed P := by
  exact And.intro E.pointwiseErgodicTheoremClosed
    (And.intro E.meanErgodicTheoremClosed E.uniqueErgodicityClosed)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse