import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure ErgodicSystem (X : Type u) (μ : Measure X) where
  system : DynamicalSystem X
  invariantMeasure : ∀ (t : system.timeDomain) (E : Set X),
    μ (system.action t '' E) = μ E
  ergodicity : ∀ (E : Set X), (∀ (t : system.timeDomain),
    system.action t '' E = E) → μ E = 0 ∨ μ (Set.univ \ E) = 0

structure ErgodicSystemEvidence (X : Type u) (μ : Measure X) (E : ErgodicSystem X μ) where
  invariantMeasureClosed : E.invariantMeasure
  ergodicityClosed : E.ergodicity

def ErgodicSystemClosed (X : Type u) (μ : Measure X) (E : ErgodicSystem X μ) : Prop :=
  E.invariantMeasure ∧ E.ergodicity

theorem ergodic_system_closed_from_evidence
    (X : Type u) (μ : Measure X) (E : ErgodicSystem X μ) (Ev : ErgodicSystemEvidence X μ E) :
    ErgodicSystemClosed X μ E := by
  exact And.intro Ev.invariantMeasureClosed Ev.ergodicityClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse