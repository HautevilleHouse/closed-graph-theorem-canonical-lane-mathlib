import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

def ConstrainedClosedGraphClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_closed_graph_endgame (A : AdmissibleClass) :
    ConstrainedClosedGraphClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse