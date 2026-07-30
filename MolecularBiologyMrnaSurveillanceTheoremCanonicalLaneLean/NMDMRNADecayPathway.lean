import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure NMDPathwayPackage where
  pioneerRoundExonJunctionComplex : Prop
  upf1Recruitment : Prop
  upf2Upf3Complex : Prop
  nonsenseCodonRecognition : Prop
  decayTrigger : Prop

structure NMDPathwayEvidence (P : NMDPathwayPackage) where
  pioneerRoundExonJunctionComplexClosed : P.pioneerRoundExonJunctionComplex
  upf1RecruitmentClosed : P.upf1Recruitment
  upf2Upf3ComplexClosed : P.upf2Upf3Complex
  nonsenseCodonRecognitionClosed : P.nonsenseCodonRecognition
  decayTriggerClosed : P.decayTrigger

def NMDPathwayClosed (P : NMDPathwayPackage) : Prop :=
  P.pioneerRoundExonJunctionComplex ∧ P.upf1Recruitment ∧ P.upf2Upf3Complex ∧
  P.nonsenseCodonRecognition ∧ P.decayTrigger

theorem nmd_pathway_closed_from_evidence (P : NMDPathwayPackage) (E : NMDPathwayEvidence P) : NMDPathwayClosed P := by
  exact And.intro E.pioneerRoundExonJunctionComplexClosed
    (And.intro E.upf1RecruitmentClosed
      (And.intro E.upf2Upf3ComplexClosed
        (And.intro E.nonsenseCodonRecognitionClosed E.decayTriggerClosed)))

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse