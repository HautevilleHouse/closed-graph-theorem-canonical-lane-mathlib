import canonicalLaneMathlib.AdmissibleClass

/-!
# Banach Space Package
-/

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure BanachSpacePackage where
  space : Type u
  norm : space → ℝ
  normedAddCommGroup : NormedAddCommGroup space
  complete : CompleteSpace space

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  normedAddCommGroupClosed : NormedAddCommGroup B.space
  completeClosed : CompleteSpace B.space

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  CompleteSpace B.space

theorem banach_space_closed_from_evidence (B : BanachSpacePackage)
    (E : BanachSpaceEvidence B) : BanachSpaceClosed B := by
  exact E.completeClosed

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse
