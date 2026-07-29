import DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.DynamicsFoundation

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure OrbitClassificationPackage (P : GroupActionDynamicsPackage) where
  orbitTypes : Type u
  classificationMap : P.orbitSpace → orbitTypes
  classificationIsContinuous : Continuous classificationMap
  orbitEquivalenceRelation : Setoid P.space
  quotientOrbitSpace : Type v
  quotientMap : P.space → quotientOrbitSpace
  hausdorffQuotient : TopologicalSpace quotientOrbitSpace
  hausdorffProperty : T2Space quotientOrbitSpace

structure OrbitClassificationEvidence (P : GroupActionDynamicsPackage)
    (C : OrbitClassificationPackage P) where
  classificationMapClosed : Continuous C.classificationMap
  hausdorffQuotientClosed : T2Space C.quotientOrbitSpace

def OrbitClassificationClosed (P : GroupActionDynamicsPackage)
    (C : OrbitClassificationPackage P) : Prop :=
  Continuous C.classificationMap ∧ T2Space C.quotientOrbitSpace

theorem orbit_classification_closed_from_evidence
    (P : GroupActionDynamicsPackage) (C : OrbitClassificationPackage P)
    (E : OrbitClassificationEvidence P C) : OrbitClassificationClosed P C := by
  exact And.intro E.classificationMapClosed E.hausdorffQuotientClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse