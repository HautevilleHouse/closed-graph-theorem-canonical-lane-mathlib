import HautevilleHouse.ClosedGraphTheoremCanonicalLaneLean.BanachSpaceDomain

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure GraphTopologyPackage {B : BanachSpacePackage} where
  graphSpace : Type u
  graphNorm : graphSpace → ℝ
  graphComplete : Prop
  graphClosedInProduct : Prop
  operatorContinuityFromGraph : Prop

structure GraphTopologyEvidence {B : BanachSpacePackage} (G : GraphTopologyPackage B) where
  graphCompleteClosed : G.graphComplete
  graphClosedInProductClosed : G.graphClosedInProduct
  operatorContinuityFromGraphClosed : G.operatorContinuityFromGraph

def GraphTopologyClosed {B : BanachSpacePackage} (G : GraphTopologyPackage B) : Prop :=
  G.graphComplete ∧ G.graphClosedInProduct ∧ G.operatorContinuityFromGraph

theorem graph_topology_closed_from_evidence {B : BanachSpacePackage} (G : GraphTopologyPackage B) (E : GraphTopologyEvidence G) : GraphTopologyClosed G := by
  exact And.intro E.graphCompleteClosed (And.intro E.graphClosedInProductClosed E.operatorContinuityFromGraphClosed)

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse