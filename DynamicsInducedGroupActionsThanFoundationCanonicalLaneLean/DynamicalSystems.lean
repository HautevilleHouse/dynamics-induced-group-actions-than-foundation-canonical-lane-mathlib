import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure DynamicalSystem (X : Type u) where
  stateSpace : Type u
  timeDomain : Type v
  action : timeDomain → stateSpace → stateSpace
  groupOperation : timeDomain → timeDomain → timeDomain
  identityElement : timeDomain
  inverseElement : timeDomain → timeDomain
  actionCompatibility : ∀ (g h : timeDomain) (x : stateSpace), action (groupOperation g h) x = action g (action h x)
  actionIdentity : ∀ (x : stateSpace), action identityElement x = x
  actionInverse : ∀ (g : timeDomain) (x : stateSpace), action (inverseElement g) (action g x) = x

structure DynamicalSystemEvidence (X : Type u) (D : DynamicalSystem X) where
  actionCompatibilityClosed : D.actionCompatibility
  actionIdentityClosed : D.actionIdentity
  actionInverseClosed : D.actionInverse

def DynamicalSystemClosed (X : Type u) (D : DynamicalSystem X) : Prop :=
  D.actionCompatibility ∧ D.actionIdentity ∧ D.actionInverse

theorem dynamical_system_closed_from_evidence
    (X : Type u) (D : DynamicalSystem X) (E : DynamicalSystemEvidence X D) :
    DynamicalSystemClosed X D := by
  exact And.intro E.actionCompatibilityClosed
    (And.intro E.actionIdentityClosed E.actionInverseClosed)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse