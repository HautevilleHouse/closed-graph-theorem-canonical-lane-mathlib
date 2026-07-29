import canonicalLaneMathlib.AdmissibleClass

/-!
# Closed Graph Theorem Package

This module states the Closed Graph Theorem as an admissible bridge.
-/

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure ClosedGraphTheoremPackage where
  X : Type u
  Y : Type v
  normedAddCommGroupX : NormedAddCommGroup X
  completeSpaceX : CompleteSpace X
  normedAddCommGroupY : NormedAddCommGroup Y
  completeSpaceY : CompleteSpace Y
  operator : GraphOperator X Y
  theoremStatement : GraphClosed operator → Continuous (operator.linearMap)

def ClosedGraphTheoremClosed (C : ClosedGraphTheoremPackage) : Prop :=
  ∀ (h : GraphClosed C.operator), Continuous (C.operator.linearMap)

theorem closed_graph_theorem_holds (C : ClosedGraphTheoremPackage) :
    ClosedGraphTheoremClosed C := by
  intro h
  exact C.theoremStatement h

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse