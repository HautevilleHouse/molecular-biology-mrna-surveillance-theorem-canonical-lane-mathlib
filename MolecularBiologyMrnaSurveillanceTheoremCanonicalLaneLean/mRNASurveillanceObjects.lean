import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure MRNASpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MRNAAdmittedObject where
  space : MRNASpace
  translationInitiation : Prop
  surveillancePathway : Prop
  noGoDecay : Prop
  conclusion : noGoDecay

structure MRNAEndgameState where
  object : MRNAAdmittedObject

def MRNAWitnessClosed (O : MRNAAdmittedObject) : Prop :=
  O.noGoDecay

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse