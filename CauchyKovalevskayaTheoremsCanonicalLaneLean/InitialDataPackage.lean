import HautevilleHouse.CauchyKovalevskayaTheoremsCanonicalLaneLean.AnalyticityPackage

/-!
# Initial Data Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure InitialDataPackage {S : CKSystem} where
  initialSurface : Type u
  initialData : Type v
  analyticOnSurface : Prop
  compatibilityConditions : Prop
  extensionProperty : Prop

structure InitialDataEvidence {S : CKSystem} (I : InitialDataPackage S) where
  analyticOnSurfaceClosed : I.analyticOnSurface
  compatibilityConditionsClosed : I.compatibilityConditions
  extensionPropertyClosed : I.extensionProperty

def InitialDataClosed {S : CKSystem} (I : InitialDataPackage S) : Prop :=
  I.analyticOnSurface ∧ I.compatibilityConditions ∧ I.extensionProperty

theorem initial_data_closed_from_evidence {S : CKSystem} (I : InitialDataPackage S) (E : InitialDataEvidence I) :
    InitialDataClosed I := by
  exact And.intro E.analyticOnSurfaceClosed
    (And.intro E.compatibilityConditionsClosed E.extensionPropertyClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
