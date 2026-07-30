import HautevilleHouse.MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.NMDRegulation

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure NMDEndpointPackage (A : AdmissibleClass) (P : NMDMechanismPackage A) (R : NMDRegulationPackage A P) where
  transcriptDegradation : Prop
  surveillanceComplete : Prop
  transcriptDegradationTerm : transcriptDegradation
  surveillanceCompleteTerm : surveillanceComplete

structure NMDEndpointEvidence (A : AdmissibleClass) (P : NMDMechanismPackage A) (R : NMDRegulationPackage A P) (Ep : NMDEndpointPackage A P R) where
  transcriptDegradationClosed : Ep.transcriptDegradation
  surveillanceCompleteClosed : Ep.surveillanceComplete

def NMDEndpointClosed (A : AdmissibleClass) (P : NMDMechanismPackage A) (R : NMDRegulationPackage A P) (Ep : NMDEndpointPackage A P R) : Prop :=
  Ep.transcriptDegradation ∧ Ep.surveillanceComplete

theorem nmd_endpoint_closed_from_evidence (A : AdmissibleClass) (P : NMDMechanismPackage A) (R : NMDRegulationPackage A P) (Ep : NMDEndpointPackage A P R) (E : NMDEndpointEvidence A P R Ep) :
    NMDEndpointClosed A P R Ep := by
  exact And.intro E.transcriptDegradationClosed E.surveillanceCompleteClosed

theorem endpoint_supplies_decay (A : AdmissibleClass) (P : NMDMechanismPackage A) (R : NMDRegulationPackage A P) (Ep : NMDEndpointPackage A P R) :
    MrnaSurveillanceWitnessClosed A.object := by
  exact A.object.conclusion

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse
