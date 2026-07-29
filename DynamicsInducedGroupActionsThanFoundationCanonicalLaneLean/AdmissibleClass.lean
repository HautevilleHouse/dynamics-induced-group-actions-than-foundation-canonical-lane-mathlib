import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : DynamicalSystemGroupActionPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalSystemGroupActionClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse