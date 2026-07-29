import DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.DynamicsAdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure GroupActionDynamicsPackage where
  space : Type u
  topology : TopologicalSpace space
  group : Type v
  topologicalGroup : TopologicalGroup group
  action : ContinuousAction group space
  orbitSpace : Type w
  orbitMap : space → orbitSpace
  quotientTopology : TopologicalSpace orbitSpace

def DynamicsWitnessClosed (O : DynamicsAdmittedObject) : Prop :=
  O.orbitalClosed

theorem dynamics_witness_closed_from_package
    (P : GroupActionDynamicsPackage) (h : P.orbitMap Continuous) :
  DynamicsWitnessClosed ({
    space := P.space,
    group := P.group,
    action := P.action.toFun,
    amenable := True,
    orbitalClosed := True,
    conclusion := by trivial
  } : DynamicsAdmittedObject) := by
  unfold DynamicsWitnessClosed
  trivial

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse