import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CauchyKovalevskayaTheoremsCanonicalLaneLean.AnalyticPDESystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure InitialValueProblemPackage {S : AnalyticPDESystemPackage} where
  spaceVariableDomain : Type u
  timeVariableDomain : Type v
  initialSurface : Type w
  cauchyDataAnalytic : Prop
  localExistence : Prop
  localUniqueness : Prop
  analyticDependenceOnData : Prop

structure InitialValueProblemEvidence {S : AnalyticPDESystemPackage} (P : InitialValueProblemPackage S) where
  cauchyDataAnalyticClosed : P.cauchyDataAnalytic
  localExistenceClosed : P.localExistence
  localUniquenessClosed : P.localUniqueness
  analyticDependenceOnDataClosed : P.analyticDependenceOnData

def InitialValueProblemClosed {S : AnalyticPDESystemPackage} (P : InitialValueProblemPackage S) : Prop :=
  P.cauchyDataAnalytic ∧ P.localExistence ∧ P.localUniqueness ∧ P.analyticDependenceOnData

theorem initial_value_problem_closed_from_evidence {S : AnalyticPDESystemPackage}
    (P : InitialValueProblemPackage S) (E : InitialValueProblemEvidence P) :
    InitialValueProblemClosed P := by
  exact And.intro E.cauchyDataAnalyticClosed (And.intro E.localExistenceClosed (And.intro E.localUniquenessClosed E.analyticDependenceOnDataClosed))

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
