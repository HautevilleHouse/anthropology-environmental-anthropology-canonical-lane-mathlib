import canonicalLaneMathlib.AdmissibleClass
import AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.ResilienceFramework

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure EnvironmentalDataSources {S : SustainabilityIndicatorsPackage} {R : ResilienceFrameworkPackage S} where
  satelliteImagery : Prop
  fieldSurveys : Prop
  indigenousKnowledge : Prop
  historicalRecords : Prop
  modelSimulations : Prop
  dataIntegration : Prop

def EnvironmentalDataSourcesClosed {S : SustainabilityIndicatorsPackage} {R : ResilienceFrameworkPackage S} (D : EnvironmentalDataSources S R) : Prop :=
  D.satelliteImagery ∧ D.fieldSurveys ∧ D.indigenousKnowledge ∧ D.historicalRecords ∧ D.modelSimulations ∧ D.dataIntegration

structure EnvironmentalDataSourcesCertificate {S : SustainabilityIndicatorsPackage} {R : ResilienceFrameworkPackage S} (D : EnvironmentalDataSources S R) where
  satelliteImageryClosed : D.satelliteImagery
  fieldSurveysClosed : D.fieldSurveys
  indigenousKnowledgeClosed : D.indigenousKnowledge
  historicalRecordsClosed : D.historicalRecords
  modelSimulationsClosed : D.modelSimulations
  dataIntegrationClosed : D.dataIntegration

theorem environmental_data_sources_closed_from_certificate {S : SustainabilityIndicatorsPackage} {R : ResilienceFrameworkPackage S} (D : EnvironmentalDataSources S R) (C : EnvironmentalDataSourcesCertificate D) :
    EnvironmentalDataSourcesClosed D := by
  exact And.intro C.satelliteImageryClosed
    (And.intro C.fieldSurveysClosed
      (And.intro C.indigenousKnowledgeClosed
        (And.intro C.historicalRecordsClosed
          (And.intro C.modelSimulationsClosed C.dataIntegrationClosed))))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse
