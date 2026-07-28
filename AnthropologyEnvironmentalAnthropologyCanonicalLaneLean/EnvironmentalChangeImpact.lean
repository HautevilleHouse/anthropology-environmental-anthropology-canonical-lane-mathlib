import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure EnvironmentalChangeImpactPackage where
  landUseChangeDocumented : Prop
  climateImpactOnLivelihood : Prop
  ecosystemServiceChange : Prop
  communityAdaptationResponse : Prop

structure EnvironmentalChangeImpactEvidence (E : EnvironmentalChangeImpactPackage) where
  landUseChangeDocumentedClosed : E.landUseChangeDocumented
  climateImpactOnLivelihoodClosed : E.climateImpactOnLivelihood
  ecosystemServiceChangeClosed : E.ecosystemServiceChange
  communityAdaptationResponseClosed : E.communityAdaptationResponse

def EnvironmentalChangeImpactClosed (E : EnvironmentalChangeImpactPackage) : Prop :=
  E.landUseChangeDocumented ∧ E.climateImpactOnLivelihood ∧
  E.ecosystemServiceChange ∧ E.communityAdaptationResponse

theorem environmental_change_impact_closed_from_evidence (E : EnvironmentalChangeImpactPackage)
    (ev : EnvironmentalChangeImpactEvidence E) : EnvironmentalChangeImpactClosed E := by
  exact And.intro ev.landUseChangeDocumentedClosed
    (And.intro ev.climateImpactOnLivelihoodClosed
      (And.intro ev.ecosystemServiceChangeClosed ev.communityAdaptationResponseClosed))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse