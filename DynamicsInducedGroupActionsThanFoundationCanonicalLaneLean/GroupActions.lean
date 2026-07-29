import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure GroupAction (G : Type u) (X : Type v) where
  group : G
  space : X
  action : G → X → X
  identityAction : ∀ (x : X), action (1 : G) x = x
  compatibility : ∀ (g h : G) (x : X), action (g * h) x = action g (action h x)

structure GroupActionEvidence (G : Type u) (X : Type v) (A : GroupAction G X) where
  identityActionClosed : A.identityAction
  compatibilityClosed : A.compatibility

def GroupActionClosed (G : Type u) (X : Type v) (A : GroupAction G X) : Prop :=
  A.identityAction ∧ A.compatibility

theorem group_action_closed_from_evidence
    (G : Type u) (X : Type v) (A : GroupAction G X) (E : GroupActionEvidence G X A) :
    GroupActionClosed G X A := by
  exact And.intro E.identityActionClosed E.compatibilityClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse