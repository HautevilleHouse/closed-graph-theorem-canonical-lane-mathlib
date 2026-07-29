import HautevilleHouse.ClosedGraphTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure Projection (α : Type u) where
  toFun : α → α
  idempotent : ∀ x, toFun (toFun x) = toFun x

structure ClosedGraphEndgameState where
  object : ClosedGraphAdmittedObject

def closedGraphProjection : Projection ClosedGraphEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem closed_graph_projection_idempotent (x : ClosedGraphEndgameState) :
    closedGraphProjection.toFun (closedGraphProjection.toFun x) = closedGraphProjection.toFun x := by
  exact closedGraphProjection.idempotent x

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse