import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : GraphAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse
