import canonicalLaneMathlib.AdmissibleClass

/-!
# Kovalevskaya Existence Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure KovalevskayaExistencePackage where
  localSolutionExists : Prop
  solutionAnalytic : Prop
  uniqueness : Prop
  maximalDomainCharacterized : Prop

structure KovalevskayaExistenceEvidence (E : KovalevskayaExistencePackage) where
  localSolutionExistsClosed : E.localSolutionExists
  solutionAnalyticClosed : E.solutionAnalytic
  uniquenessClosed : E.uniqueness
  maximalDomainCharacterizedClosed : E.maximalDomainCharacterized

def KovalevskayaExistenceClosed (E : KovalevskayaExistencePackage) : Prop :=
  E.localSolutionExists ∧ E.solutionAnalytic ∧ E.uniqueness ∧ E.maximalDomainCharacterized

theorem kovalevskaya_existence_closed_from_evidence
    (E : KovalevskayaExistencePackage) (Ev : KovalevskayaExistenceEvidence E) :
    KovalevskayaExistenceClosed E := by
  exact And.intro Ev.localSolutionExistsClosed
    (And.intro Ev.solutionAnalyticClosed
      (And.intro Ev.uniquenessClosed Ev.maximalDomainCharacterizedClosed))

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
