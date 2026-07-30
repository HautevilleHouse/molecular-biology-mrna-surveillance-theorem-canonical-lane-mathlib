import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.NMDTranslationPackage
import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.SMGComplexFormation
import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.Upf1HelicaseActivation
import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.MrnaDegradationMechanism

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure NMDAdmissibleClass where
  translationEvent : NMDRibosomeStallingEvent
  translationClosed : NMDTranslationClosed translationEvent
  smgComplex : SMGComplexPackage
  smgClosed : SMGComplexClosed smgComplex
  upf1Activation : Upf1HelicaseActivationPackage
  upf1Closed : Upf1HelicaseActivationClosed upf1Activation
  degradation : MrnaDegradationPathway
  degradationClosed : MrnaDegradationClosed degradation
  gateWitness : (translationClosed ∧ smgClosed ∧ upf1Closed ∧ degradationClosed) ∨
    (¬translationClosed → (¬smgClosed ∨ ¬upf1Closed ∨ ¬degradationClosed))

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse