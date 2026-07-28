import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure MackeyConvergencePackage where
  carrier : Type u
  vectorSpaceStructure : AddCommGroup carrier
  topology : TopologicalSpace carrier
  bornology : BornologyPackage
  mackeyCondition : Prop
  bornivorousProperty : Prop

structure MackeyConvergenceEvidence (M : MackeyConvergencePackage) where
  mackeyConditionClosed : M.mackeyCondition
  bornivorousPropertyClosed : M.bornivorousProperty

def MackeyConvergenceClosed (M : MackeyConvergencePackage) : Prop :=
  M.mackeyCondition ∧ M.bornivorousProperty

theorem mackey_convergence_closed_from_evidence (M : MackeyConvergencePackage) (E : MackeyConvergenceEvidence M) :
    MackeyConvergenceClosed M := by
  exact And.intro E.mackeyConditionClosed E.bornivorousPropertyClosed

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse
