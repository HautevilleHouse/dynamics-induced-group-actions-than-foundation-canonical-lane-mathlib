import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.GroupActionClosure

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure InvariantMeasurePackage (G : GroupActionPackage) where
  measure : Set G.space → ℝ
  measureNonnegative : ∀ s : Set G.space, measure s ≥ 0
  measureEmpty : measure ∅ = 0
  measureCountablyAdditive : MeasureTheory.IsAdditive measure
  invariantUnderAction : ∀ g : G.group, ∀ s : Set G.space, measure (G.action g '' s) = measure s

def InvariantMeasureClosed (G : GroupActionPackage) (M : InvariantMeasurePackage G) : Prop :=
  M.invariantUnderAction

theorem invariant_measure_closed_from_package (G : GroupActionPackage) (M : InvariantMeasurePackage G) : InvariantMeasureClosed G M := by
  exact M.invariantUnderAction

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse