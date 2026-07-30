import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

-- Upf1 helicase activation upon binding

structure Upf1HelicaseActivationPackage where
  atpBinding : Prop
  rnaHelicaseActivity : Prop
  processiveUnwinding : Prop

structure Upf1HelicaseActivationEvidence (U : Upf1HelicaseActivationPackage) where
  atpBindingClosed : U.atpBinding
  rnaHelicaseActivityClosed : U.rnaHelicaseActivity
  processiveUnwindingClosed : U.processiveUnwinding

def Upf1HelicaseActivationClosed (U : Upf1HelicaseActivationPackage) : Prop :=
  U.atpBinding ∧ U.rnaHelicaseActivity ∧ U.processiveUnwinding

theorem upf1_helicase_activation_closed_from_evidence (U : Upf1HelicaseActivationPackage)
    (Ev : Upf1HelicaseActivationEvidence U) : Upf1HelicaseActivationClosed U := by
  exact And.intro Ev.atpBindingClosed
    (And.intro Ev.rnaHelicaseActivityClosed Ev.processiveUnwindingClosed)

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse