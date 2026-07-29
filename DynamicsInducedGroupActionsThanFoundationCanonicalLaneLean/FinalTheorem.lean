import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.Ergodicity

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

def ConstrainedDynamicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamics_endgame (A : AdmissibleClass) : ConstrainedDynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse