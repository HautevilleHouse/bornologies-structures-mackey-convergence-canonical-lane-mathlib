import HautevilleHouse.BornologiesStructuresMackeyConvergenceCanonicalLaneLean.MackeyConvergence

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure CompatibleTopologyPackage {B : BornologyPackage} (M : MackeyConvergencePackage B) where
  mackeyTopology : Prop
  weakTopology : Prop
  compatible : Prop

def CompatibleTopologyClosed {B : BornologyPackage} {M : MackeyConvergencePackage B} (C : CompatibleTopologyPackage M) : Prop :=
  C.mackeyTopology ∧ C.weakTopology ∧ C.compatible

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse