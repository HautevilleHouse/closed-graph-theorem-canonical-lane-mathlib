import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure BoundednessEquivalenceModel (X Y : BanachSpaceModel)
    (L : LinearOperatorModel X Y) where
  closedImpliesBounded : Prop
  boundedImpliesClosed : Prop
  equivalenceProof : Prop
  closedImpliesBoundedTerm : closedImpliesBounded
  boundedImpliesClosedTerm : boundedImpliesClosed
  equivalenceProofTerm : equivalenceProof

structure BoundednessEquivalenceEvidence {X Y : BanachSpaceModel}
    {L : LinearOperatorModel X Y}
    (B : BoundednessEquivalenceModel X Y L) where
  closedImpliesBoundedClosed : B.closedImpliesBounded
  boundedImpliesClosedClosed : B.boundedImpliesClosed
  equivalenceProofClosed : B.equivalenceProof

def BoundednessEquivalenceClosed {X Y : BanachSpaceModel}
    {L : LinearOperatorModel X Y}
    (B : BoundednessEquivalenceModel X Y L) : Prop :=
  B.closedImpliesBounded ∧ B.boundedImpliesClosed ∧ B.equivalenceProof

theorem boundedness_equivalence_closed_from_evidence
    {X Y : BanachSpaceModel} {L : LinearOperatorModel X Y}
    (B : BoundednessEquivalenceModel X Y L)
    (E : BoundednessEquivalenceEvidence B) :
    BoundednessEquivalenceClosed B :=
  And.intro E.closedImpliesBoundedClosed
    (And.intro E.boundedImpliesClosedClosed E.equivalenceProofClosed)

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse