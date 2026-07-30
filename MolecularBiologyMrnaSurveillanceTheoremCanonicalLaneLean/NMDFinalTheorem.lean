import HautevilleHouse.MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

def ConstrainedNMDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nmd_endgame (A : AdmissibleClass) :
    ConstrainedNMDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse