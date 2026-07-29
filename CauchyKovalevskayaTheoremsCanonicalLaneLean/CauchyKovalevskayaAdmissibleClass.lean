import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CauchyKovalevskayaAdmittedObject where
  domain : Type
  codomain : Type
  system : Type
  analyticCoefficients : Prop
  initialData : Prop
  uniqueSolution : Prop
  conclusion : uniqueSolution

def CauchyKovalevskayaWitnessClosed (O : CauchyKovalevskayaAdmittedObject) : Prop :=
  O.uniqueSolution

structure CauchyKovalevskayaAdmissibleClass where
  object : CauchyKovalevskayaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CauchyKovalevskayaAdmissibleClass) : Prop :=
  CauchyKovalevskayaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse