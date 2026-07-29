import HautevilleHouse.ClosedGraphTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure BanachSpacePackage where
  domainSpace : Type u
  codomainSpace : Type v
  domainNorm : domainSpace → ℝ
  codomainNorm : codomainSpace → ℝ
  domainComplete : Prop
  codomainComplete : Prop
  linearOperator : domainSpace → codomainSpace
  operatorClosedGraph : Prop

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  domainCompleteClosed : B.domainComplete
  codomainCompleteClosed : B.codomainComplete
  operatorClosedGraphClosed : B.operatorClosedGraph

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.domainComplete ∧ B.codomainComplete ∧ B.operatorClosedGraph

theorem banach_space_closed_from_evidence (B : BanachSpacePackage) (E : BanachSpaceEvidence B) : BanachSpaceClosed B := by
  exact And.intro E.domainCompleteClosed (And.intro E.codomainCompleteClosed E.operatorClosedGraphClosed)

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse