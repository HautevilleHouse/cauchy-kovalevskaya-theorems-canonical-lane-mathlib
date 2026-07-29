import CauchyKovalevskayaTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.solutionClaim

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse