import DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.DynamicsInducedActionPackage

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure InvariantMeasureStructure {M : DynamicsSpace}
    (P : DynamicsInducedActionPackage M) where
  measureSpace : Type u
  invariantMeasure : measureSpace → Prop
  existence : Prop
  uniquenessCriteria : Prop

structure InvariantMeasureEvidence {M : DynamicsSpace}
    {P : DynamicsInducedActionPackage M}
    (I : InvariantMeasureStructure P) where
  existenceClosed : I.existence
  uniquenessCriteriaClosed : I.uniquenessCriteria

def InvariantMeasureClosed {M : DynamicsSpace}
    {P : DynamicsInducedActionPackage M}
    (I : InvariantMeasureStructure P) : Prop :=
  I.existence ∧ I.uniquenessCriteria

theorem invariant_measure_closed_from_evidence
    {M : DynamicsSpace} {P : DynamicsInducedActionPackage M}
    (I : InvariantMeasureStructure P)
    (Ev : InvariantMeasureEvidence I) : InvariantMeasureClosed I := by
  exact And.intro Ev.existenceClosed Ev.uniquenessCriteriaClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse