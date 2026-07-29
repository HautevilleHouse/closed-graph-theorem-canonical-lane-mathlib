import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse
