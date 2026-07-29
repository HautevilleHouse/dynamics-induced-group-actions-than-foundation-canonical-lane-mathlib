import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.DynamicalSystemGroupAction

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure TopologicalEntropyPackage {D : DynamicalSystemGroupActionPackage} where
  entropyDefined : Prop
  entropyFormula : ℝ
  entropyUpperBound : ℝ
  entropyLowerBound : ℝ
  entropyNonnegative : Prop
  entropyInvariant : Prop

structure TopologicalEntropyEvidence {D : DynamicalSystemGroupActionPackage}
    (T : TopologicalEntropyPackage D) where
  entropyDefinedClosed : T.entropyDefined
  entropyFormulaClosed : T.entropyFormula = T.entropyFormula
  entropyUpperBoundClosed : T.entropyUpperBound = T.entropyUpperBound
  entropyLowerBoundClosed : T.entropyLowerBound = T.entropyLowerBound
  entropyNonnegativeClosed : T.entropyNonnegative
  entropyInvariantClosed : T.entropyInvariant

def TopologicalEntropyClosed {D : DynamicalSystemGroupActionPackage}
    (T : TopologicalEntropyPackage D) : Prop :=
  T.entropyDefined ∧ T.entropyNonnegative ∧ T.entropyInvariant

theorem topological_entropy_closed_from_evidence
    {D : DynamicalSystemGroupActionPackage} (T : TopologicalEntropyPackage D)
    (E : TopologicalEntropyEvidence T) : TopologicalEntropyClosed T := by
  exact And.intro E.entropyDefinedClosed
    (And.intro E.entropyNonnegativeClosed E.entropyInvariantClosed)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse