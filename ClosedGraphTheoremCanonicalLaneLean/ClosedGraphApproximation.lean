import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure ClosedGraphApproximationModel (X Y : BanachSpaceModel)
    (L : LinearOperatorModel X Y) where
  sequentialApproach : Prop
  limitPreservation : Prop
  approximationComplete : Prop
  sequentialApproachTerm : sequentialApproach
  limitPreservationTerm : limitPreservation
  approximationCompleteTerm : approximationComplete

structure ClosedGraphApproximationEvidence {X Y : BanachSpaceModel}
    {L : LinearOperatorModel X Y}
    (A : ClosedGraphApproximationModel X Y L) where
  sequentialApproachClosed : A.sequentialApproach
  limitPreservationClosed : A.limitPreservation
  approximationCompleteClosed : A.approximationComplete

def ClosedGraphApproximationClosed {X Y : BanachSpaceModel}
    {L : LinearOperatorModel X Y}
    (A : ClosedGraphApproximationModel X Y L) : Prop :=
  A.sequentialApproach ∧ A.limitPreservation ∧ A.approximationComplete

theorem closed_graph_approximation_closed_from_evidence
    {X Y : BanachSpaceModel} {L : LinearOperatorModel X Y}
    (A : ClosedGraphApproximationModel X Y L)
    (E : ClosedGraphApproximationEvidence A) :
    ClosedGraphApproximationClosed A :=
  And.intro E.sequentialApproachClosed
    (And.intro E.limitPreservationClosed E.approximationCompleteClosed)

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse