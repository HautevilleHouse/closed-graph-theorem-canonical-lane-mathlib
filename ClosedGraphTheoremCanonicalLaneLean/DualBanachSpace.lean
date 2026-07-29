import canonicalLaneMathlib.AdmissibleClass

/-!
# Dual Banach Space Package

This module defines the structure of a dual Banach space for the Closed Graph Theorem.
-/

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure DualBanachSpace where
  primal : Type u
  normedAddCommGroup : NormedAddCommGroup primal
  completeSpace : CompleteSpace primal
  dual : Type v
  dualNormedAddCommGroup : NormedAddCommGroup dual
  dualCompleteSpace : CompleteSpace dual
  dualIsDual : IsDualSpace primal dual
  dualIsDefined : Prop

structure DualBanachSpaceEvidence (D : DualBanachSpace) where
  primalBanach : D.completeSpace
  dualBanach : D.dualCompleteSpace
  dualIsDualClosed : D.dualIsDual
  dualIsDefinedClosed : D.dualIsDefined

def DualBanachSpaceClosed (D : DualBanachSpace) : Prop :=
  D.completeSpace ∧ D.dualCompleteSpace ∧ D.dualIsDual ∧ D.dualIsDefined

theorem dual_banach_space_closed_from_evidence (D : DualBanachSpace) (E : DualBanachSpaceEvidence D) :
    DualBanachSpaceClosed D := by
  exact And.intro E.primalBanach
    (And.intro E.dualBanach
      (And.intro E.dualIsDualClosed E.dualIsDefinedClosed))

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse