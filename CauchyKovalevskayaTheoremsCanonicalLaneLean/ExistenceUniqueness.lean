import CauchyKovalevskayaTheoremsCanonicalLaneLean.MajorantMethod

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure ExistenceUniquenessPackage {S : CKSystem} {M : MajorantMethodPackage S} where
  localExistenceProved : Prop
  uniquenessProved : Prop
  analyticSolutionConstructed : Prop
  solutionDomainIdentified : Prop

structure ExistenceUniquenessEvidence {S : CKSystem} {M : MajorantMethodPackage S} (U : ExistenceUniquenessPackage S M) where
  localExistenceProvedClosed : U.localExistenceProved
  uniquenessProvedClosed : U.uniquenessProved
  analyticSolutionConstructedClosed : U.analyticSolutionConstructed
  solutionDomainIdentifiedClosed : U.solutionDomainIdentified

def ExistenceUniquenessClosed {S : CKSystem} {M : MajorantMethodPackage S} (U : ExistenceUniquenessPackage S M) : Prop :=
  U.localExistenceProved ∧ U.uniquenessProved ∧ U.analyticSolutionConstructed ∧ U.solutionDomainIdentified

theorem existence_uniqueness_closed_from_evidence {S : CKSystem} {M : MajorantMethodPackage S} (U : ExistenceUniquenessPackage S M) (E : ExistenceUniquenessEvidence U) : ExistenceUniquenessClosed U := by
  exact And.intro E.localExistenceProvedClosed (And.intro E.uniquenessProvedClosed (And.intro E.analyticSolutionConstructedClosed E.solutionDomainIdentifiedClosed))

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse