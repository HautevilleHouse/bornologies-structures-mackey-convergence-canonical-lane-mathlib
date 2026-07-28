import BornologiesStructuresMackeyConvergenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure BornologicalConvergencePackage (A : AdmissibleClass) where
  convergenceDefined : Prop
  sequentialCharacterization : Prop
  bornologicalConvergenceClosed : Prop

structure BornologicalConvergenceEvidence {A : AdmissibleClass} (P : BornologicalConvergencePackage A) where
  convergenceDefinedClosed : P.convergenceDefined
  sequentialCharacterizationClosed : P.sequentialCharacterization
  bornologicalConvergenceClosedClosed : P.bornologicalConvergenceClosed

def BornologicalConvergenceClosed {A : AdmissibleClass} (P : BornologicalConvergencePackage A) : Prop :=
  P.convergenceDefined ∧ P.sequentialCharacterization ∧ P.bornologicalConvergenceClosed

theorem bornological_convergence_closed_from_evidence
    {A : AdmissibleClass} (P : BornologicalConvergencePackage A) (E : BornologicalConvergenceEvidence P) :
    BornologicalConvergenceClosed P := by
  exact And.intro E.convergenceDefinedClosed (And.intro E.sequentialCharacterizationClosed E.bornologicalConvergenceClosedClosed)

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse