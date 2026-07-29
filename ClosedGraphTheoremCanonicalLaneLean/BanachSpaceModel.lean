import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure BanachSpaceModel where
  carrier : Type u
  norm : carrier → ℝ
  norm_nonneg : ∀ x : carrier, 0 ≤ norm x
  norm_zero_iff : ∀ x : carrier, norm x = 0 ↔ x = 0
  norm_triangle : ∀ x y : carrier, norm (x + y) ≤ norm x + norm y
  norm_smul : ∀ (α : ℝ) (x : carrier), norm (α • x) = |α| * norm x
  complete : Prop
  completeTerm : complete

structure BanachSpaceEvidence (B : BanachSpaceModel) where
  completeClosed : B.complete

def BanachSpaceClosed (B : BanachSpaceModel) : Prop :=
  B.complete

theorem banach_space_closed_from_evidence (B : BanachSpaceModel)
    (E : BanachSpaceEvidence B) : BanachSpaceClosed B :=
  E.completeClosed

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse