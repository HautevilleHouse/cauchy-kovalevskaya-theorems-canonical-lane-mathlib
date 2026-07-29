import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsCanonicalLaneLean.CauchyKovalevskayaOperator

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CauchyKovalevskayaExistencePackage where
  system : AnalyticPDESystem
  initialData : Type u
  analyticInitial : Prop
  existsSolution : Prop
  solutionAnalytic : Prop

definition ExistenceClosed (pkg : CauchyKovalevskayaExistencePackage) : Prop :=
  pkg.existsSolution ∧ pkg.solutionAnalytic

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse