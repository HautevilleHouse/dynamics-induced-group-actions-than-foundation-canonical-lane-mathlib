import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.StationaryActions

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure ErgodicityPackage (G : GroupActionPackage) (M : InvariantMeasurePackage G) (S : StationaryActionPackage G M) where
  trivialInvariantSets : ∀ s : Set G.space, (∀ g : G.group, G.action g '' s = s) → M.measure s = 0 ∨ M.measure s = M.measure Set.univ

def ErgodicityClosed (G : GroupActionPackage) (M : InvariantMeasurePackage G) (S : StationaryActionPackage G M) (E : ErgodicityPackage G M S) : Prop :=
  E.trivialInvariantSets

theorem ergodicity_closed_from_package (G : GroupActionPackage) (M : InvariantMeasurePackage G) (S : StationaryActionPackage G M) (E : ErgodicityPackage G M S) : ErgodicityClosed G M S E := by
  exact E.trivialInvariantSets

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse