import BornologiesStructuresMackeyConvergenceCanonicalLaneLean.MackeyConvergence

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure StrictBornologyPackage {A : AdmissibleClass} {B : BornologicalConvergencePackage A}
    {M : MackeyConvergencePackage B} where
  strictBornologyDefined : Prop
  vonNeumannBoundedness : Prop
  strictBornologyClosed : Prop

structure StrictBornologyEvidence {A : AdmissibleClass} {B : BornologicalConvergencePackage A}
    {M : MackeyConvergencePackage B} (S : StrictBornologyPackage M) where
  strictBornologyDefinedClosed : S.strictBornologyDefined
  vonNeumannBoundednessClosed : S.vonNeumannBoundedness
  strictBornologyClosedClosed : S.strictBornologyClosed

def StrictBornologyClosed {A : AdmissibleClass} {B : BornologicalConvergencePackage A}
    {M : MackeyConvergencePackage B} (S : StrictBornologyPackage M) : Prop :=
  S.strictBornologyDefined ∧ S.vonNeumannBoundedness ∧ S.strictBornologyClosed

theorem strict_bornology_closed_from_evidence
    {A : AdmissibleClass} {B : BornologicalConvergencePackage A}
    {M : MackeyConvergencePackage B} (S : StrictBornologyPackage M) (E : StrictBornologyEvidence S) :
    StrictBornologyClosed S := by
  exact And.intro E.strictBornologyDefinedClosed (And.intro E.vonNeumannBoundednessClosed E.strictBornologyClosedClosed)

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse