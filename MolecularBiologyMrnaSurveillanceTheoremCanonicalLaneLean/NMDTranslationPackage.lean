import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

-- NMD Translation package: captures early termination events

structure NMDRibosomeStallingEvent where
  prematureStopCodon : Prop
  exonJunctionComplexPresent : Prop
  ribosomeStalling : Prop

structure NMDTranslationEvidence (E : NMDRibosomeStallingEvent) where
  prematureStopCodonClosed : E.prematureStopCodon
  exonJunctionComplexPresentClosed : E.exonJunctionComplexPresent
  ribosomeStallingClosed : E.ribosomeStalling

def NMDTranslationClosed (E : NMDRibosomeStallingEvent) : Prop :=
  E.prematureStopCodon ∧ E.exonJunctionComplexPresent ∧ E.ribosomeStalling

theorem nmd_translation_closed_from_evidence (E : NMDRibosomeStallingEvent)
    (Ev : NMDTranslationEvidence E) : NMDTranslationClosed E := by
  exact And.intro Ev.prematureStopCodonClosed
    (And.intro Ev.exonJunctionComplexPresentClosed Ev.ribosomeStallingClosed)

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse