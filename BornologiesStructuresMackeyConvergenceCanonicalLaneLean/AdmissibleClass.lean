import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

structure BornologyAdmittedObject where
  space : Type u
  bornology : Bornology space
  boundedSetsComplete : Prop
  conclusion : boundedSetsComplete

structure AdmissibleClass where
  object : BornologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse