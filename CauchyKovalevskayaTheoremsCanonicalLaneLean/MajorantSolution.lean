import CauchyKovalevskayaTheoremsCanonicalLaneLean.AnalyticFunctionSpaces

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure MajorantSolutionPackage where
  majorantSystem : Prop
  comparisonPrinciple : Prop
  convergentPowerSeries : Prop
  localExistence : Prop

structure MajorantSolutionEvidence (M : MajorantSolutionPackage) where
  majorantSystemClosed : M.majorantSystem
  comparisonPrincipleClosed : M.comparisonPrinciple
  convergentPowerSeriesClosed : M.convergentPowerSeries
  localExistenceClosed : M.localExistence

def MajorantSolutionClosed (M : MajorantSolutionPackage) : Prop :=
  M.majorantSystem ∧ M.comparisonPrinciple ∧ M.convergentPowerSeries ∧ M.localExistence

theorem majorant_solution_closed_from_evidence (M : MajorantSolutionPackage)
    (E : MajorantSolutionEvidence M) : MajorantSolutionClosed M := by
  exact And.intro E.majorantSystemClosed (And.intro E.comparisonPrincipleClosed
    (And.intro E.convergentPowerSeriesClosed E.localExistenceClosed))

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse