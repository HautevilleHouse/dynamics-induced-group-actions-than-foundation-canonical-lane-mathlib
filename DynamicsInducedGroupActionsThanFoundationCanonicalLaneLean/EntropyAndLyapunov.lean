import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure EntropyLyapunovPackage {G : GroupActionSystem} where
  metricEntropy : Type u
  lyapunovExponents : Type v
  pesinFormula : Prop
  entropyFormula : Prop

structure EntropyLyapunovEvidence {G : GroupActionSystem} (P : EntropyLyapunovPackage G) where
  pesinFormulaClosed : P.pesinFormula
  entropyFormulaClosed : P.entropyFormula

def EntropyLyapunovClosed {G : GroupActionSystem} (P : EntropyLyapunovPackage G) : Prop :=
  P.pesinFormula ∧ P.entropyFormula

theorem entropy_lyapunov_closed_from_evidence
    {G : GroupActionSystem} (P : EntropyLyapunovPackage G)
    (E : EntropyLyapunovEvidence P) : EntropyLyapunovClosed P := by
  exact And.intro E.pesinFormulaClosed E.entropyFormulaClosed

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse