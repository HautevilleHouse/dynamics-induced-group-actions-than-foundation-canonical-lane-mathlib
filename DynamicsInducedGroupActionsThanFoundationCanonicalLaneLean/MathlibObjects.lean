import DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlib

structure DynamicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicsAdmittedObject where
  space : DynamicsSpace
  groupActionContinuous : Prop
  invariantMeasureExists : Prop
  ergodicDecomposition : Prop
  conclusion : ergodicDecomposition

structure DynamicsEndgameState where
  object : DynamicsAdmittedObject

def DynamicsWitnessClosed (O : DynamicsAdmittedObject) : Prop :=
  O.ergodicDecomposition

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse