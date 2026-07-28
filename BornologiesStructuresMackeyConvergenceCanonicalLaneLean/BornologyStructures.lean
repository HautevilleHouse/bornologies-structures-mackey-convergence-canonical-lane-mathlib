import HautevilleHouse.BornologiesStructuresMackeyConvergenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure BornologyPackage where
  space : Type u
  bornology : Bornology space
  boundedSetsClosed : Prop
  bornologyCompatible : Prop

structure BornologyEvidence (B : BornologyPackage) where
  boundedSetsClosed : B.boundedSetsClosed
  bornologyCompatible : B.bornologyCompatible

def BornologyClosed (B : BornologyPackage) : Prop :=
  B.boundedSetsClosed ∧ B.bornologyCompatible

theorem bornology_closed_from_evidence (B : BornologyPackage) (E : BornologyEvidence B) : BornologyClosed B := by
  exact And.intro E.boundedSetsClosed E.bornologyCompatible

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse