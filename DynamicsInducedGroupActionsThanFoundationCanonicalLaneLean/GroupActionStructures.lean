import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure GroupActionSystem where
  group : Type u
  space : Type v
  action : group → space → space
  continuity : Prop
  measurePreserving : Prop

structure GroupActionEvidence (G : GroupActionSystem) where
  continuityClosed : G.continuity
  measurePreservingClosed : G.measurePreserving

def GroupActionClosed (G : GroupActionSystem) : Prop :=
  G.continuity ∧ G.measurePreserving

theorem group_action_closed_from_evidence (G : GroupActionSystem)
    (E : GroupActionEvidence G) : GroupActionClosed G := by
  exact And.intro E.continuityClosed E.measurePreservingClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse