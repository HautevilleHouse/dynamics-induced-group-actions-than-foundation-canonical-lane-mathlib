import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure InducedAction (X : Type u) (Y : Type v) where
  originalSystem : DynamicalSystem X
  targetSpace : Y
  inducingMap : X → Y
  inducedAction : DynamicalSystem Y
  diagramCommutes : ∀ (t : originalSystem.timeDomain) (x : X),
    inducedAction.action t (inducingMap x) = inducingMap (originalSystem.action t x)

structure InducedActionEvidence (X : Type u) (Y : Type v) (I : InducedAction X Y) where
  diagramCommutesClosed : I.diagramCommutes

def InducedActionClosed (X : Type u) (Y : Type v) (I : InducedAction X Y) : Prop :=
  I.diagramCommutes

theorem induced_action_closed_from_evidence
    (X : Type u) (Y : Type v) (I : InducedAction X Y) (E : InducedActionEvidence X Y I) :
    InducedActionClosed X Y I := by
  exact E.diagramCommutesClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse