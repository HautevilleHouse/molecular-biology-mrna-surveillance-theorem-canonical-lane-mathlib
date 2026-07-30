import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.NonsenseMediatedDecay

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure NoGoDecayPackage where
  stalledRibosome : Prop
  dom34Hbs1Complex : Prop
  subunitDissociation : Prop
  mrnaCleavage : Prop

structure NoGoDecayEvidence (P : NoGoDecayPackage) where
  stalledRibosomeClosed : P.stalledRibosome
  dom34Hbs1ComplexClosed : P.dom34Hbs1Complex
  subunitDissociationClosed : P.subunitDissociation
  mrnaCleavageClosed : P.mrnaCleavage

def NoGoDecayClosed (P : NoGoDecayPackage) : Prop :=
  P.stalledRibosome ∧ P.dom34Hbs1Complex ∧ P.subunitDissociation ∧ P.mrnaCleavage

theorem no_go_decay_closed_from_evidence (P : NoGoDecayPackage) (E : NoGoDecayEvidence P) :
    NoGoDecayClosed P := by
  exact And.intro E.stalledRibosomeClosed
    (And.intro E.dom34Hbs1ComplexClosed
      (And.intro E.subunitDissociationClosed E.mrnaCleavageClosed))

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse