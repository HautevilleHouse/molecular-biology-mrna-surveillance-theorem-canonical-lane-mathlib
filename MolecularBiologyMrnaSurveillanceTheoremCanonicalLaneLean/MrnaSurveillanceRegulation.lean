import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure MrnaSurveillanceRegulationPackage where
  regulatoryKinases : Type u
  phosphorylationEvents : Prop
  surveillanceActivityControl : Prop
  feedbackMechanisms : Prop

structure MrnaSurveillanceRegulationEvidence (R : MrnaSurveillanceRegulationPackage) where
  phosphorylationEventsClosed : R.phosphorylationEvents
  surveillanceActivityControlClosed : R.surveillanceActivityControl
  feedbackMechanismsClosed : R.feedbackMechanisms

def MrnaSurveillanceRegulationClosed (R : MrnaSurveillanceRegulationPackage) : Prop :=
  R.phosphorylationEvents ∧ R.surveillanceActivityControl ∧ R.feedbackMechanisms

theorem mrna_surveillance_regulation_closed_from_evidence (R : MrnaSurveillanceRegulationPackage) (E : MrnaSurveillanceRegulationEvidence R) :
  MrnaSurveillanceRegulationClosed R := by
  exact And.intro E.phosphorylationEventsClosed
    (And.intro E.surveillanceActivityControlClosed E.feedbackMechanismsClosed)

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse