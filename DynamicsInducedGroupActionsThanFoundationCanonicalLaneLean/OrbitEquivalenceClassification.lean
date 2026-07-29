import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.DynamicalSystemGroupAction

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure OrbitEquivalenceClassificationPackage {D : DynamicalSystemGroupActionPackage} where
  orbitEquivalenceRelation : Equiv D.spaceType D.spaceType
  orbitTypeClassification : Prop
  orbitCountable : Prop
  orbitDense : Prop
  orbitClosed : Prop
  classificationComplete : Prop

structure OrbitEquivalenceClassificationEvidence {D : DynamicalSystemGroupActionPackage}
    (O : OrbitEquivalenceClassificationPackage D) where
  orbitTypeClassificationClosed : O.orbitTypeClassification
  orbitCountableClosed : O.orbitCountable
  orbitDenseClosed : O.orbitDense
  orbitClosedClosed : O.orbitClosed
  classificationCompleteClosed : O.classificationComplete

def OrbitEquivalenceClassificationClosed {D : DynamicalSystemGroupActionPackage}
    (O : OrbitEquivalenceClassificationPackage D) : Prop :=
  O.orbitTypeClassification ∧ O.orbitCountable ∧ O.orbitDense ∧ O.orbitClosed ∧ O.classificationComplete

theorem orbit_equivalence_classification_closed_from_evidence
    {D : DynamicalSystemGroupActionPackage} (O : OrbitEquivalenceClassificationPackage D)
    (E : OrbitEquivalenceClassificationEvidence O) : OrbitEquivalenceClassificationClosed O := by
  exact And.intro E.orbitTypeClassificationClosed
    (And.intro E.orbitCountableClosed
      (And.intro E.orbitDenseClosed
        (And.intro E.orbitClosedClosed E.classificationCompleteClosed)))

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse