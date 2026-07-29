import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure DynamicalSystemGroupActionPackage where
  groupType : Type u
  spaceType : Type v
  topologySpace : TopologicalSpace spaceType
  groupTopology : TopologicalSpace groupType
  groupMul : Mul groupType
  groupInv : Inv groupType
  groupOne : One groupType
  action : groupType → spaceType → spaceType
  actionContinuous : Prop
  actionGroupHom : Prop
  actionIdentity : Prop
  actionCompatibility : Prop

structure DynamicalSystemGroupActionEvidence (D : DynamicalSystemGroupActionPackage) where
  actionContinuousClosed : D.actionContinuous
  actionGroupHomClosed : D.actionGroupHom
  actionIdentityClosed : D.actionIdentity
  actionCompatibilityClosed : D.actionCompatibility

def DynamicalSystemGroupActionClosed (D : DynamicalSystemGroupActionPackage) : Prop :=
  D.actionContinuous ∧ D.actionGroupHom ∧ D.actionIdentity ∧ D.actionCompatibility

theorem dynamical_system_group_action_closed_from_evidence
    (D : DynamicalSystemGroupActionPackage) (E : DynamicalSystemGroupActionEvidence D) :
    DynamicalSystemGroupActionClosed D := by
  exact And.intro E.actionContinuousClosed
    (And.intro E.actionGroupHomClosed
      (And.intro E.actionIdentityClosed E.actionCompatibilityClosed))

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse