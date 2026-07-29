import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedGraphTheoremCanonicalLaneLean

structure AdmittedObject where
  domain : Type
  codomain : Type
  linearMap : domain → codomain
  graphClosed : Prop
  witness : graphClosed

end ClosedGraphTheoremCanonicalLaneLean
end HautevilleHouse