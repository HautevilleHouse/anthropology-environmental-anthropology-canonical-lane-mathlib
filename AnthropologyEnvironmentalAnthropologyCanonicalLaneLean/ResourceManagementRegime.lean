import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure ResourceManagementRegimePackage where
  commonPoolResourceGovernance : Prop
  resourceUserConflictResolution : Prop
  sustainabilityOfHarvest : Prop
  collectiveDecisionMaking : Prop

structure ResourceManagementRegimeEvidence (R : ResourceManagementRegimePackage) where
  commonPoolResourceGovernanceClosed : R.commonPoolResourceGovernance
  resourceUserConflictResolutionClosed : R.resourceUserConflictResolution
  sustainabilityOfHarvestClosed : R.sustainabilityOfHarvest
  collectiveDecisionMakingClosed : R.collectiveDecisionMaking

def ResourceManagementRegimeClosed (R : ResourceManagementRegimePackage) : Prop :=
  R.commonPoolResourceGovernance ∧ R.resourceUserConflictResolution ∧
  R.sustainabilityOfHarvest ∧ R.collectiveDecisionMaking

theorem resource_management_regime_closed_from_evidence (R : ResourceManagementRegimePackage)
    (ev : ResourceManagementRegimeEvidence R) : ResourceManagementRegimeClosed R := by
  exact And.intro ev.commonPoolResourceGovernanceClosed
    (And.intro ev.resourceUserConflictResolutionClosed
      (And.intro ev.sustainabilityOfHarvestClosed ev.collectiveDecisionMakingClosed))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse