import CauchyKovalevskayaTheoremsCanonicalLaneLean.DomainOfAnalyticity

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure FormalPowerSeriesPackage {P : CauchyKovalevskayaPDEPackage} where
  coefficientRing : Type u
  formalSeries : Type v
  substitutionLaw : Prop
  majorantMethod : Prop
  convergenceDomain : Prop

structure FormalPowerSeriesEvidence {P : CauchyKovalevskayaPDEPackage} (F : FormalPowerSeriesPackage P) where
  substitutionLawClosed : F.substitutionLaw
  majorantMethodClosed : F.majorantMethod
  convergenceDomainClosed : F.convergenceDomain

def FormalPowerSeriesClosed {P : CauchyKovalevskayaPDEPackage} (F : FormalPowerSeriesPackage P) : Prop :=
  F.substitutionLaw ∧ F.majorantMethod ∧ F.convergenceDomain

theorem formal_power_series_closed_from_evidence
    {P : CauchyKovalevskayaPDEPackage} (F : FormalPowerSeriesPackage P)
    (E : FormalPowerSeriesEvidence F) : FormalPowerSeriesClosed F := by
  exact And.intro E.substitutionLawClosed (And.intro E.majorantMethodClosed E.convergenceDomainClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse