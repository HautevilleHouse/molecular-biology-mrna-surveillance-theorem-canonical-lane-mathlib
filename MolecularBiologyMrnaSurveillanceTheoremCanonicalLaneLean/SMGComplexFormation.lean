import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

-- SMG complex formation during NMD

structure SMGComplexPackage where
  upf1Recruitment : Prop
  upf2Upf3Recruitment : Prop
  complexAssemblyComplete : Prop

structure SMGComplexEvidence (S : SMGComplexPackage) where
  upf1RecruitmentClosed : S.upf1Recruitment
  upf2Upf3RecruitmentClosed : S.upf2Upf3Recruitment
  complexAssemblyCompleteClosed : S.complexAssemblyComplete

def SMGComplexClosed (S : SMGComplexPackage) : Prop :=
  S.upf1Recruitment ∧ S.upf2Upf3Recruitment ∧ S.complexAssemblyComplete

theorem smg_complex_closed_from_evidence (S : SMGComplexPackage)
    (Ev : SMGComplexEvidence S) : SMGComplexClosed S := by
  exact And.intro Ev.upf1RecruitmentClosed
    (And.intro Ev.upf2Upf3RecruitmentClosed Ev.complexAssemblyCompleteClosed)

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse