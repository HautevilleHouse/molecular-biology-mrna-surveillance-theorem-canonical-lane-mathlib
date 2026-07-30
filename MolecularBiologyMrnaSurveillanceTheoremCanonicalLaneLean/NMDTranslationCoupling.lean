import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure TranslationCouplingPackage where
  eRF1ERF3Recruitment : Prop
  ribosomeStalling : Prop
  smg1KinaseActivation : Prop
  phosphorylationCascade : Prop
  upf1Phosphorylation : Prop

structure TranslationCouplingEvidence (T : TranslationCouplingPackage) where
  eRF1ERF3RecruitmentClosed : T.eRF1ERF3Recruitment
  ribosomeStallingClosed : T.ribosomeStalling
  smg1KinaseActivationClosed : T.smg1KinaseActivation
  phosphorylationCascadeClosed : T.phosphorylationCascade
  upf1PhosphorylationClosed : T.upf1Phosphorylation

def TranslationCouplingClosed (T : TranslationCouplingPackage) : Prop :=
  T.eRF1ERF3Recruitment ∧ T.ribosomeStalling ∧ T.smg1KinaseActivation ∧
  T.phosphorylationCascade ∧ T.upf1Phosphorylation

theorem translation_coupling_closed_from_evidence (T : TranslationCouplingPackage) (E : TranslationCouplingEvidence T) : TranslationCouplingClosed T := by
  exact And.intro E.eRF1ERF3RecruitmentClosed
    (And.intro E.ribosomeStallingClosed
      (And.intro E.smg1KinaseActivationClosed
        (And.intro E.phosphorylationCascadeClosed E.upf1PhosphorylationClosed)))

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse