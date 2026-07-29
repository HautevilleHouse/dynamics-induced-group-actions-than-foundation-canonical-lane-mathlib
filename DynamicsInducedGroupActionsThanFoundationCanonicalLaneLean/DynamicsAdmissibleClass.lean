import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure DynamicsAdmittedObject where
  space : Type u
  group : Type v
  action : group → space → space
  amenable : Prop
  orbitalClosed : Prop
  conclusion : orbitalClosed

structure AdmissibleClass where
  object : DynamicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse