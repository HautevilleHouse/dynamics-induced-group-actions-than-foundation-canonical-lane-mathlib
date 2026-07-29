import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure EquivariantMap (G : Type u) (X : Type v) (Y : Type w) where
  actionX : GroupAction G X
  actionY : GroupAction G Y
  map : X → Y
  equivariance : ∀ (g : G) (x : X), map (actionX.action g x) = actionY.action g (map x)

structure EquivariantMapEvidence (G : Type u) (X : Type v) (Y : Type w) (F : EquivariantMap G X Y) where
  equivarianceClosed : F.equivariance

def EquivariantMapClosed (G : Type u) (X : Type v) (Y : Type w) (F : EquivariantMap G X Y) : Prop :=
  F.equivariance

theorem equivariant_map_closed_from_evidence
    (G : Type u) (X : Type v) (Y : Type w) (F : EquivariantMap G X Y) (E : EquivariantMapEvidence G X Y F) :
    EquivariantMapClosed G X Y F := by
  exact E.equivarianceClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse