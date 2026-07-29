import CauchyKovalevskayaTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CKEndgameState where
  object : AdmissibleClass

def ckProjection : Projection CKEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ck_projection_idempotent (x : CKEndgameState) :
    ckProjection.toFun (ckProjection.toFun x) = ckProjection.toFun x := by
  exact ckProjection.idempotent x

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse