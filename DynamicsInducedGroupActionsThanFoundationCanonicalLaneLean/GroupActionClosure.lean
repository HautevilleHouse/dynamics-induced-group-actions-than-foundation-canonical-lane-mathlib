import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure GroupActionPackage where
  group : Type u
  groupMul : Mul group
  groupUnit : group
  groupInv : Inv group
  groupLaws : Group group
  space : Type v
  spaceTopology : TopologicalSpace space
  action : group → space → space
  actionContinuous : Continuous (Function.uncurry action)
  actionIdentity : ∀ x : space, action groupUnit x = x
  actionCompatibility : ∀ g h : group, ∀ x : space, action (g * h) x = action g (action h x)

def GroupActionClosed (G : GroupActionPackage) : Prop :=
  G.actionIdentity ∧ G.actionCompatibility

theorem group_action_closed_from_package (G : GroupActionPackage) : GroupActionClosed G := by
  exact And.intro G.actionIdentity G.actionCompatibility

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse