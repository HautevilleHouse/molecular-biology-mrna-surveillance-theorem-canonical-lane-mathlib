import HautevilleHouse.MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.NMDAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure NMDMechanismPackage (A : AdmissibleClass) where
  pioneerRound : Prop
  eJCCore : Prop
  upfBinding : Prop
  smgDecay : Prop
  pioneerRoundTerm : pioneerRound
  eJCCoreTerm : eJCCore
  upfBindingTerm : upfBinding
  smgDecayTerm : smgDecay

structure NMDMechanismEvidence (A : AdmissibleClass) (P : NMDMechanismPackage A) where
  pioneerRoundClosed : P.pioneerRound
  eJCCoreClosed : P.eJCCore
  upfBindingClosed : P.upfBinding
  smgDecayClosed : P.smgDecay

def NMDMechanismClosed (A : AdmissibleClass) (P : NMDMechanismPackage A) : Prop :=
  P.pioneerRound ∧ P.eJCCore ∧ P.upfBinding ∧ P.smgDecay

theorem nmd_mechanism_closed_from_evidence (A : AdmissibleClass) (P : NMDMechanismPackage A) (E : NMDMechanismEvidence A P) :
    NMDMechanismClosed A P := by
  exact And.intro E.pioneerRoundClosed (And.intro E.eJCCoreClosed (And.intro E.upfBindingClosed E.smgDecayClosed))

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse
