import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure MrnaSurveillanceTherapeuticTargetsPackage where
  smallMoleculeInhibitors : Type u
  antisenseOligonucleotides : Type v
  geneTherapyApproaches : Type w
  nmdInhibitionTherapy : Prop
  clinicalApplications : Prop

structure MrnaSurveillanceTherapeuticTargetsEvidence (T : MrnaSurveillanceTherapeuticTargetsPackage) where
  nmdInhibitionTherapyClosed : T.nmdInhibitionTherapy
  clinicalApplicationsClosed : T.clinicalApplications

def MrnaSurveillanceTherapeuticTargetsClosed (T : MrnaSurveillanceTherapeuticTargetsPackage) : Prop :=
  T.nmdInhibitionTherapy ∧ T.clinicalApplications

theorem mrna_surveillance_therapeutic_targets_closed_from_evidence (T : MrnaSurveillanceTherapeuticTargetsPackage) (E : MrnaSurveillanceTherapeuticTargetsEvidence T) :
  MrnaSurveillanceTherapeuticTargetsClosed T := by
  exact And.intro E.nmdInhibitionTherapyClosed E.clinicalApplicationsClosed

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse