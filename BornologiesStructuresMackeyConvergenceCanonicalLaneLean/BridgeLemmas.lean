import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BornologiesStructuresMackeyConvergenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BornologiesStructuresMackeyConvergenceCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BornologiesStructuresMackeyConvergenceCanonicalLaneLean
end HautevilleHouse