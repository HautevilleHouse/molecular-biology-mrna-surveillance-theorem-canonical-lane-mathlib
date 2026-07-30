import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure MrnaSurveillanceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MrnaAdmittedObject where
  space : MrnaSurveillanceSpace
  cellType : Type
  mrnaDegradationPathway : Type
  surveillanceMechanism : Prop
  nonsenseMediatedDecay : Prop
  conclusion : surveillanceMechanism ∧ nonsenseMediatedDecay

structure MrnaEndgameState where
  object : MrnaAdmittedObject

def MrnaWitnessClosed (O : MrnaAdmittedObject) : Prop :=
  O.surveillanceMechanism ∧ O.nonsenseMediatedDecay

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse