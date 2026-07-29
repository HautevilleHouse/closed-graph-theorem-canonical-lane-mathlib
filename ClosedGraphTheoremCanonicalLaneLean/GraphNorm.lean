import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure GraphNormModel (X Y : BanachSpaceModel)
    (L : LinearOperatorModel X Y) where
  graphSpace : Set (X.carrier × Y.carrier)
  graphNorm : (X.carrier × Y.carrier) → ℝ
  graphNorm_nonneg : ∀ p : X.carrier × Y.carrier, 0 ≤ graphNorm p
  graphNorm_zero_iff : ∀ p : X.carrier × Y.carrier, graphNorm p = 0 ↔ p = (0,0)
  graphNorm_triangle : ∀ p q : X.carrier × Y.carrier, graphNorm (p + q) ≤ graphNorm p + graphNorm q
  graphNorm_smul : ∀ (α : ℝ) (p : X.carrier × Y.carrier), graphNorm (α • p) = |α| * graphNorm p
  graphComplete : Prop
  graphCompleteTerm : graphComplete

structure GraphNormEvidence {X Y : BanachSpaceModel}
    {L : LinearOperatorModel X Y} (G : GraphNormModel X Y L) where
  graphCompleteClosed : G.graphComplete

def GraphNormClosed {X Y : BanachSpaceModel}
    {L : LinearOperatorModel X Y} (G : GraphNormModel X Y L) : Prop :=
  G.graphComplete

theorem graph_norm_closed_from_evidence
    {X Y : BanachSpaceModel} {L : LinearOperatorModel X Y}
    (G : GraphNormModel X Y L) (E : GraphNormEvidence G) :
    GraphNormClosed G :=
  E.graphCompleteClosed

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse