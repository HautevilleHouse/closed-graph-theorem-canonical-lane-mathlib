import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedGraphTheoremCanonicalLaneLean.LinearOperator

/-!
# Boundedness Package
-/

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure BoundednessPackage {X Y : BanachSpacePackage}
    (T : LinearOperatorPackage X Y) where
  bounded : Prop
  operatorNorm : ℝ

structure BoundednessEvidence {X Y : BanachSpacePackage}
    {T : LinearOperatorPackage X Y} (B : BoundednessPackage T) where
  boundedClosed : B.bounded
  operatorNormClosed : B.operatorNorm = B.operatorNorm

def BoundednessClosed {X Y : BanachSpacePackage}
    {T : LinearOperatorPackage X Y} (B : BoundednessPackage T) : Prop :=
  B.bounded

theorem boundedness_closed_from_evidence {X Y : BanachSpacePackage}
    {T : LinearOperatorPackage X Y} (B : BoundednessPackage T)
    (E : BoundednessEvidence B) : BoundednessClosed B := by
  exact E.boundedClosed

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse
