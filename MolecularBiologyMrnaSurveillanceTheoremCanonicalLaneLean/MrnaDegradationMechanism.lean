import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

-- mRNA degradation pathway following NMD activation

structure MrnaDegradationPathway where
  deadenylation : Prop
  decapping : Prop
  exonucleolyticDegradation : Prop
  endonucleolyticCleavage : Prop

structure MrnaDegradationEvidence (M : MrnaDegradationPathway) where
  deadenylationClosed : M.deadenylation
  decappingClosed : M.decapping
  exonucleolyticDegradationClosed : M.exonucleolyticDegradation
  endonucleolyticCleavageClosed : M.endonucleolyticCleavage

def MrnaDegradationClosed (M : MrnaDegradationPathway) : Prop :=
  M.deadenylation ∧ M.decapping ∧ M.exonucleolyticDegradation ∧ M.endonucleolyticCleavage

theorem mrna_degradation_closed_from_evidence (M : MrnaDegradationPathway)
    (Ev : MrnaDegradationEvidence M) : MrnaDegradationClosed M := by
  exact And.intro Ev.deadenylationClosed
    (And.intro Ev.decappingClosed
      (And.intro Ev.exonucleolyticDegradationClosed Ev.endonucleolyticCleavageClosed))

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse