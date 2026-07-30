import MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean.mRNASurveillanceFinalTheorem

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
  deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
  deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
  deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
  deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
  deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
  deriving Repr, DecidableEq

def bridgeConstantKeys : List String :=
  ["nmd_efficiency", "no_go_efficiency", "surveillance_threshold"]

theorem reviewer_constant_count_checked : bridgeConstantKeys.length = 3 := by
  rfl

end MolecularBiologyMrnaSurveillanceTheoremCanonicalLaneLean
end HautevilleHouse