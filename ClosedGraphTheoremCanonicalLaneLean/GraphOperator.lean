import canonicalLaneMathlib.AdmissibleClass

/-!
# Graph Operator Package

This module defines a closed linear operator between Banach spaces and its graph.
-/

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure GraphOperator (X Y : Type u) [NormedAddCommGroup X] [CompleteSpace X] [NormedAddCommGroup Y] [CompleteSpace Y] where
  domain : Set X
  linearMap : X → Y
  linear : ∀ (x y : X), linearMap (x + y) = linearMap x + linearMap y
  homogeneous : ∀ (a : ℝ) (x : X), linearMap (a • x) = a • linearMap x
  graphClosed : IsClosed (Set.graph linearMap domain)
  domainClosed : IsClosed domain

def GraphClosed {X Y : Type u} [NormedAddCommGroup X] [CompleteSpace X] [NormedAddCommGroup Y] [CompleteSpace Y] (T : GraphOperator X Y) : Prop :=
  T.graphClosed ∧ T.domainClosed

structure GraphOperatorEvidence (X Y : Type u) [NormedAddCommGroup X] [CompleteSpace X] [NormedAddCommGroup Y] [CompleteSpace Y] (T : GraphOperator X Y) where
  graphClosedClosed : T.graphClosed
  domainClosedClosed : T.domainClosed

theorem graph_closed_from_evidence (X Y : Type u) [NormedAddCommGroup X] [CompleteSpace X] [NormedAddCommGroup Y] [CompleteSpace Y] (T : GraphOperator X Y) (E : GraphOperatorEvidence X Y T) :
    GraphClosed T := by
  exact And.intro E.graphClosedClosed E.domainClosedClosed

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse