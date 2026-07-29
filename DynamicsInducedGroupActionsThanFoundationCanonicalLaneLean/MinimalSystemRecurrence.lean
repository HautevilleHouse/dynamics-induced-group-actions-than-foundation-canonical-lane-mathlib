import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean.DynamicalSystemGroupAction

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean

structure MinimalSystemRecurrencePackage {D : DynamicalSystemGroupActionPackage} where
  minimalSet : Set D.spaceType
  minimality : Prop
  recurrenceSet : Set D.spaceType
  recurrencePointDense : Prop
  uniformRecurrence : Prop

structure MinimalSystemRecurrenceEvidence {D : DynamicalSystemGroupActionPackage}
    (M : MinimalSystemRecurrencePackage D) where
  minimalityClosed : M.minimality
  recurrencePointDenseClosed : M.recurrencePointDense
  uniformRecurrenceClosed : M.uniformRecurrence

def MinimalSystemRecurrenceClosed {D : DynamicalSystemGroupActionPackage}
    (M : MinimalSystemRecurrencePackage D) : Prop :=
  M.minimality ∧ M.recurrencePointDense ∧ M.uniformRecurrence

theorem minimal_system_recurrence_closed_from_evidence
    {D : DynamicalSystemGroupActionPackage} (M : MinimalSystemRecurrencePackage D)
    (E : MinimalSystemRecurrenceEvidence M) : MinimalSystemRecurrenceClosed M := by
  exact And.intro E.minimalityClosed
    (And.intro E.recurrencePointDenseClosed E.uniformRecurrenceClosed)

end DynamicsInducedGroupActionsThanFoundationCanonicalLaneLean
end HautevilleHouse