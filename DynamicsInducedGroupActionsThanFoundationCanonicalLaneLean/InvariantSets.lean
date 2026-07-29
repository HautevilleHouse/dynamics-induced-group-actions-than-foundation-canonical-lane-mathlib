import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure InvariantSet (X : Type u) where
  system : DynamicalSystem X
  subset : Set X
  invariance : ∀ (t : system.timeDomain) (x : X),
    x ∈ subset → system.action t x ∈ subset

structure InvariantSetEvidence (X : Type u) (I : InvariantSet X) where
  invarianceClosed : I.invariance

def InvariantSetClosed (X : Type u) (I : InvariantSet X) : Prop :=
  I.invariance

theorem invariant_set_closed_from_evidence
    (X : Type u) (I : InvariantSet X) (E : InvariantSetEvidence X I) :
    InvariantSetClosed X I := by
  exact E.invarianceClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse