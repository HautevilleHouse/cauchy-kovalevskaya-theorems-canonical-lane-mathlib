import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CauchyData where
  surface : Type u
  codimension : Nat
  dataFunctions : Type v
  analyticData : Prop
  compatibilityWithSystem : Prop

structure CauchyDataEvidence (C : CauchyData) where
  analyticDataClosed : C.analyticData
  compatibilityWithSystemClosed : C.compatibilityWithSystem

def CauchyDataClosed (C : CauchyData) : Prop :=
  C.analyticData ∧ C.compatibilityWithSystem

theorem cauchy_data_closed_from_evidence
    (C : CauchyData) (E : CauchyDataEvidence C) :
    CauchyDataClosed C := by
  exact And.intro E.analyticDataClosed E.compatibilityWithSystemClosed

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse