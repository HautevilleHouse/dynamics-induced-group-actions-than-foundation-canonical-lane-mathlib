import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.InvariantMeasures

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure StationaryActionPackage (G : GroupActionPackage) (M : InvariantMeasurePackage G) where
  stationaryEquilibrium : ∀ g : G.group, ∀ f : G.space → ℝ, 
    ∫ x, f (G.action g x) ∂M.measure = ∫ x, f x ∂M.measure

def StationaryActionClosed (G : GroupActionPackage) (M : InvariantMeasurePackage G) (S : StationaryActionPackage G M) : Prop :=
  S.stationaryEquilibrium

theorem stationary_action_closed_from_package (G : GroupActionPackage) (M : InvariantMeasurePackage G) (S : StationaryActionPackage G M) : StationaryActionClosed G M S := by
  exact S.stationaryEquilibrium

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse