import HautevilleHouse.MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.NMDMechanism

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure NMDRegulationPackage (A : AdmissibleClass) (P : NMDMechanismPackage A) where
  autoregulation : Prop
  physiologicalTargets : Prop
  diseaseAssociated : Prop
  autoregulationTerm : autoregulation
  physiologicalTargetsTerm : physiologicalTargets
  diseaseAssociatedTerm : diseaseAssociated

structure NMDRegulationEvidence (A : AdmissibleClass) (P : NMDMechanismPackage A) (R : NMDRegulationPackage A P) where
  autoregulationClosed : R.autoregulation
  physiologicalTargetsClosed : R.physiologicalTargets
  diseaseAssociatedClosed : R.diseaseAssociated

def NMDRegulationClosed (A : AdmissibleClass) (P : NMDMechanismPackage A) (R : NMDRegulationPackage A P) : Prop :=
  R.autoregulation ∧ R.physiologicalTargets ∧ R.diseaseAssociated

theorem nmd_regulation_closed_from_evidence (A : AdmissibleClass) (P : NMDMechanismPackage A) (R : NMDRegulationPackage A P) (E : NMDRegulationEvidence A P R) :
    NMDRegulationClosed A P R := by
  exact And.intro E.autoregulationClosed (And.intro E.physiologicalTargetsClosed E.diseaseAssociatedClosed)

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse
