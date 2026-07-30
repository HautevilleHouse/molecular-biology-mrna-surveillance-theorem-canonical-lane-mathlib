import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MrnaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse