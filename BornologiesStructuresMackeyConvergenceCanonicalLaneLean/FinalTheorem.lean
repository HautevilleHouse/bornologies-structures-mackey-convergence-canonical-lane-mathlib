import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BornologyClosed A.object.bornology

def gateClosed (A : AdmissibleClass) : Prop :=
  MackeyConvergenceClosed A.object.mackey

def ConstrainedBornologiesMackeyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bornologies_mackey_endgame (A : AdmissibleClass) :
    ConstrainedBornologiesMackeyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse
