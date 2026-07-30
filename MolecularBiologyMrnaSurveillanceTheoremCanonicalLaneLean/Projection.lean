import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.mRNASurveillanceObjects

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

def mrnaProjection : Projection MRNAEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl }

theorem mrna_projection_idempotent (x : MRNAEndgameState) :
    mrnaProjection.toFun (mrnaProjection.toFun x) = mrnaProjection.toFun x := by
  exact mrnaProjection.idempotent x

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse