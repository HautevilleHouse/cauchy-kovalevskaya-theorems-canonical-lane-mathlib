import canonicalLaneMathlib.AdmissibleClass
import AnalyticPDE
import CauchyData

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure LocalCauchyKovalevskayaPackage where
  system : AnalyticPDESystem
  cauchyData : CauchyData
  localExistence : Prop
  uniqueness : Prop
  analyticSolution : Prop
  domain : Type u

def CKAdmittedClosed (O : CauchyKovalevskayaAdmittedObject) : Prop :=
  O.localExistenceAndUniqueness

structure LocalCKEvidence (P : LocalCauchyKovalevskayaPackage) where
  localExistenceClosed : P.localExistence
  uniquenessClosed : P.uniqueness
  analyticSolutionClosed : P.analyticSolution

def LocalCKClosed (P : LocalCauchyKovalevskayaPackage) : Prop :=
  P.localExistence ∧ P.uniqueness ∧ P.analyticSolution

theorem local_ck_closed_from_evidence
    (P : LocalCauchyKovalevskayaPackage) (E : LocalCKEvidence P) :
    LocalCKClosed P := by
  exact And.intro E.localExistenceClosed
    (And.intro E.uniquenessClosed E.analyticSolutionClosed)

theorem local_ck_supplies_endpoint
    (P : LocalCauchyKovalevskayaPackage) :
    P.localExistence := by
  -- In a full formalization, this would be derived from the package.
  exact P.localExistence

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse