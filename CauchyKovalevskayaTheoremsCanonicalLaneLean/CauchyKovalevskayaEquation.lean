import CauchyKovalevskayaTheoremsCanonicalLaneLean.AnalyticSystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CauchyKovalevskayaEquation {n : ℕ} (A : AnalyticSystem n) where
  dependentVariables : Fin m → Type
  partialDerivatives : Prop
  system : Prop
  analyticRightHandSide : Prop
  initialConditions : Prop

structure CauchyKovalevskayaEquationEvidence {A : AnalyticSystem n} (C : CauchyKovalevskayaEquation A) where
  systemClosed : C.system
  analyticRightHandSideClosed : C.analyticRightHandSide
  initialConditionsClosed : C.initialConditions

def CauchyKovalevskayaEquationClosed {A : AnalyticSystem n} (C : CauchyKovalevskayaEquation A) : Prop :=
  C.system ∧ C.analyticRightHandSide ∧ C.initialConditions

theorem cauchy_kovalevskaya_equation_closed_from_evidence {A : AnalyticSystem n} (C : CauchyKovalevskayaEquation A) (E : CauchyKovalevskayaEquationEvidence C) : CauchyKovalevskayaEquationClosed C := by
  exact And.intro E.systemClosed (And.intro E.analyticRightHandSideClosed E.initialConditionsClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse