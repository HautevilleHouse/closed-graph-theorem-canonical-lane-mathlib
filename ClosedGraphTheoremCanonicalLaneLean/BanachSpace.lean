import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  complete : Prop
  normedAddCommGroup : NormedAddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier

structure BanachEvidence (B : BanachSpace) where
  completeClosed : B.complete
  normedAddCommGroupClosed : NormedAddCommGroup B.carrier
  normedSpaceClosed : NormedSpace ℝ B.carrier

def BanachClosed (B : BanachSpace) : Prop :=
  B.complete

theorem banach_closed_from_evidence (B : BanachSpace) (E : BanachEvidence B) : BanachClosed B := by
  exact E.completeClosed

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse