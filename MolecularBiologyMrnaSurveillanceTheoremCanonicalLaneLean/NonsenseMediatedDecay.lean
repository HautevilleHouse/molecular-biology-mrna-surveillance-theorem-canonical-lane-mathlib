import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.mRNASurveillanceObjects

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure NonsenseMediatedDecayPackage where
  prematureStopCodon : Prop
  upf1Recruitment : Prop
  upf2Upf3Complex : Prop
  exonJunctionComplex : Prop
  decayActivation : Prop

structure NonsenseMediatedDecayEvidence (P : NonsenseMediatedDecayPackage) where
  prematureStopCodonClosed : P.prematureStopCodon
  upf1RecruitmentClosed : P.upf1Recruitment
  upf2Upf3ComplexClosed : P.upf2Upf3Complex
  exonJunctionComplexClosed : P.exonJunctionComplex
  decayActivationClosed : P.decayActivation

def NonsenseMediatedDecayClosed (P : NonsenseMediatedDecayPackage) : Prop :=
  P.prematureStopCodon ∧ P.upf1Recruitment ∧ P.upf2Upf3Complex ∧ P.exonJunctionComplex ∧ P.decayActivation

theorem nonsense_mediated_decay_closed_from_evidence (P : NonsenseMediatedDecayPackage) (E : NonsenseMediatedDecayEvidence P) :
    NonsenseMediatedDecayClosed P := by
  exact And.intro E.prematureStopCodonClosed
    (And.intro E.upf1RecruitmentClosed
      (And.intro E.upf2Upf3ComplexClosed
        (And.intro E.exonJunctionComplexClosed E.decayActivationClosed)))

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse