import CauchyKovalevskayaTheoremsCanonicalLaneLean.CauchyKovalevskayaSystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure MajorantMethodPackage {S : CKSystem} where
  majorantSeriesConstructed : Prop
  convergenceDomain : Prop
  radiusEstimate : Prop
  solutionBoundsEstablished : Prop

structure MajorantMethodEvidence {S : CKSystem} (M : MajorantMethodPackage S) where
  majorantSeriesConstructedClosed : M.majorantSeriesConstructed
  convergenceDomainClosed : M.convergenceDomain
  radiusEstimateClosed : M.radiusEstimate
  solutionBoundsEstablishedClosed : M.solutionBoundsEstablished

def MajorantMethodClosed {S : CKSystem} (M : MajorantMethodPackage S) : Prop :=
  M.majorantSeriesConstructed ∧ M.convergenceDomain ∧ M.radiusEstimate ∧ M.solutionBoundsEstablished

theorem majorant_method_closed_from_evidence {S : CKSystem} (M : MajorantMethodPackage S) (E : MajorantMethodEvidence M) : MajorantMethodClosed M := by
  exact And.intro E.majorantSeriesConstructedClosed (And.intro E.convergenceDomainClosed (And.intro E.radiusEstimateClosed E.solutionBoundsEstablishedClosed))

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse