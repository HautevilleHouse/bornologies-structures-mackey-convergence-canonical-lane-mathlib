import HautevilleHouse.BornologiesStructuresMackeyConvergenceCanonicalLaneLean.MackeyConvergence

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure BoundedSetConvergence (B : BornologyStructure) (M : MackeyConvergenceStructure B) where
  net : Type u
  limit : net → B.carrier
  boundedSet : Set B.carrier
  convergenceInBoundedSet : ∀ (x : net), limit x ∈ boundedSet
  boundedSetClosed : boundedSet ∈ B.boundedSets

structure BoundedSetConvergenceEvidence {B : BornologyStructure} {M : MackeyConvergenceStructure B} (C : BoundedSetConvergence B M) where
  convergenceInBoundedSetTerm : C.convergenceInBoundedSet
  boundedSetClosedTerm : C.boundedSetClosed

def BoundedSetConvergenceClosed {B : BornologyStructure} {M : MackeyConvergenceStructure B} (C : BoundedSetConvergence B M) : Prop :=
  C.convergenceInBoundedSet ∧ C.boundedSetClosed

theorem bounded_set_convergence_closed_from_evidence {B : BornologyStructure} {M : MackeyConvergenceStructure B} (C : BoundedSetConvergence B M) (E : BoundedSetConvergenceEvidence C) :
    BoundedSetConvergenceClosed C := by
  exact And.intro E.convergenceInBoundedSetTerm E.boundedSetClosedTerm

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse