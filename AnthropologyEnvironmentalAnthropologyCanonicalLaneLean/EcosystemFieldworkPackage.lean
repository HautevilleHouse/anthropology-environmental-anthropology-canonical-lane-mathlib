import AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.AnthropologyObjects

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure EcosystemFieldworkPackage {F : EnvironmentalFieldworkData} where
  participantObservation : Prop
  environmentalSampling : Prop
  indigenousKnowledgeIntegration : Prop
  longitudinalMonitoring : Prop

structure EcosystemFieldworkEvidence {F : EnvironmentalFieldworkData}
    (P : EcosystemFieldworkPackage F) where
  participantObservationClosed : P.participantObservation
  environmentalSamplingClosed : P.environmentalSampling
  indigenousKnowledgeIntegrationClosed : P.indigenousKnowledgeIntegration
  longitudinalMonitoringClosed : P.longitudinalMonitoring

def EcosystemFieldworkClosed {F : EnvironmentalFieldworkData}
    (P : EcosystemFieldworkPackage F) : Prop :=
  P.participantObservation ∧ P.environmentalSampling ∧
  P.indigenousKnowledgeIntegration ∧ P.longitudinalMonitoring

theorem ecosystem_fieldwork_closed_from_evidence
    {F : EnvironmentalFieldworkData} (P : EcosystemFieldworkPackage F)
    (E : EcosystemFieldworkEvidence P) : EcosystemFieldworkClosed P := by
  exact And.intro E.participantObservationClosed
    (And.intro E.environmentalSamplingClosed
      (And.intro E.indigenousKnowledgeIntegrationClosed E.longitudinalMonitoringClosed))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse