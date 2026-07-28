import Mathlib.Topology.Bornology.Basic

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure BornologyPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  bornology : Bornology carrier
  boundedSets : Set (Set carrier)
  bornologyMatchesTopology : Prop
  vectorSpace : Module ℝ carrier
  locallyConvex : Prop
  bornivorousness : Prop

def BornologyPackageEvidence (B : BornologyPackage) : Prop :=
  B.bornologyMatchesTopology ∧ B.locallyConvex ∧ B.bornivorousness

theorem bornology_package_evidence_holds (B : BornologyPackage) : BornologyPackageEvidence B := by
  exact And.intro B.bornologyMatchesTopology (And.intro B.locallyConvex B.bornivorousness)

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse
