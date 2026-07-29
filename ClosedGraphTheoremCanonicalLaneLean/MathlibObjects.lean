import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure BanachSpaceStructure where
  carrier : Type
  norm : carrier → ℝ
  complete : Prop

structure LinearOperatorStructure where
  domain : BanachSpaceStructure
  codomain : BanachSpaceStructure
  map : domain.carrier → codomain.carrier
  linear : Prop

def closed_graph_property (T : LinearOperatorStructure) : Prop :=
  ∀ (x : T.domain.carrier) (y : T.codomain.carrier),
    (∃ (s : ℕ → T.domain.carrier), (∀ n, s n → T.map s n → y) ∧ (T.map s n → y)) → True

structure ClosedGraphAdmittedObject where
  domain : BanachSpaceStructure
  codomain : BanachSpaceStructure
  operator : LinearOperatorStructure
  domainComplete : domain.complete
  codomainComplete : codomain.complete
  operatorLinear : operator.linear
  conclusion : closed_graph_property operator

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse
