import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure ResourceManagementPackage where
  resourceScarcity : Prop
  sustainableYield : Prop
  communityGovernance : Prop
  adaptiveCapacity : Prop

structure ResourceManagementEvidence (R : ResourceManagementPackage) where
  resourceScarcityClosed : R.resourceScarcity
  sustainableYieldClosed : R.sustainableYield
  communityGovernanceClosed : R.communityGovernance
  adaptiveCapacityClosed : R.adaptiveCapacity

def ResourceManagementClosed (R : ResourceManagementPackage) : Prop :=
  R.resourceScarcity ∧ R.sustainableYield ∧ R.communityGovernance ∧ R.adaptiveCapacity

theorem resource_management_closed_from_evidence (R : ResourceManagementPackage)
    (E : ResourceManagementEvidence R) : ResourceManagementClosed R := by
  exact And.intro E.resourceScarcityClosed
    (And.intro E.sustainableYieldClosed
      (And.intro E.communityGovernanceClosed E.adaptiveCapacityClosed))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse