import CauchyKovalevskayaTheoremsCanonicalLaneLean.CauchyKovalevskayaPDE

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure UniquenessTheoremPackage where
  analyticSolutionUnique : Prop
  HolmgrenDependence : Prop
  initialDataDetermines : Prop

structure UniquenessTheoremEvidence (U : UniquenessTheoremPackage) where
  analyticSolutionUniqueClosed : U.analyticSolutionUnique
  HolmgrenDependenceClosed : U.HolmgrenDependence
  initialDataDeterminesClosed : U.initialDataDetermines

def UniquenessTheoremClosed (U : UniquenessTheoremPackage) : Prop :=
  U.analyticSolutionUnique ∧ U.HolmgrenDependence ∧ U.initialDataDetermines

theorem uniqueness_theorem_closed_from_evidence (U : UniquenessTheoremPackage)
    (E : UniquenessTheoremEvidence U) : UniquenessTheoremClosed U := by
  exact And.intro E.analyticSolutionUniqueClosed (And.intro E.HolmgrenDependenceClosed
    E.initialDataDeterminesClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse