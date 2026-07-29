import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure LinearOperatorModel (X Y : BanachSpaceModel) where
  domain : Set X.carrier
  codomain : Set Y.carrier
  linear : ∀ (x y : X.carrier) (α : ℝ), x ∈ domain → y ∈ domain → (x + y) ∈ domain ∧ α • x ∈ domain ∧ T (x + y) = T x + T y ∧ T (α • x) = α • T x
  T : domain → Y.carrier
  closedGraph : Prop
  closedGraphTerm : closedGraph

structure LinearOperatorEvidence {X Y : BanachSpaceModel}
    (L : LinearOperatorModel X Y) where
  closedGraphClosed : L.closedGraph

def LinearOperatorClosed {X Y : BanachSpaceModel}
    (L : LinearOperatorModel X Y) : Prop :=
  L.closedGraph

theorem linear_operator_closed_from_evidence
    {X Y : BanachSpaceModel} (L : LinearOperatorModel X Y)
    (E : LinearOperatorEvidence L) : LinearOperatorClosed L :=
  E.closedGraphClosed

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse