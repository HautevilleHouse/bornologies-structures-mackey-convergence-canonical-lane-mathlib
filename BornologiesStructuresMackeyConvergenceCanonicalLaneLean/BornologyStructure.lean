import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure BornologyPackage where
  carrier : Type u
  bornology : Set (Set carrier)
  coversSingletons : ∀ x : carrier, {x} ∈ bornology
  closedUnderSubsets : ∀ A B : Set carrier, A ∈ bornology → B ⊆ A → B ∈ bornology
  closedUnderFiniteUnion : ∀ A B : Set carrier, A ∈ bornology → B ∈ bornology → A ∪ B ∈ bornology

structure BornologyEvidence (B : BornologyPackage) where
  coversSingletonsClosed : B.coversSingletons
  closedUnderSubsetsClosed : B.closedUnderSubsets
  closedUnderFiniteUnionClosed : B.closedUnderFiniteUnion

def BornologyClosed (B : BornologyPackage) : Prop :=
  B.coversSingletons ∧ B.closedUnderSubsets ∧ B.closedUnderFiniteUnion

theorem bornology_closed_from_evidence (B : BornologyPackage) (E : BornologyEvidence B) :
    BornologyClosed B := by
  exact And.intro E.coversSingletonsClosed (And.intro E.closedUnderSubsetsClosed E.closedUnderFiniteUnionClosed)

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse
