import HautevilleHouse.AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.EnvironmentalImpact

/-!
# Sustainability Indicators Package
-/

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure SustainabilityIndicatorsPackage {E : EcosystemModelPackage} {S : SubsistenceStrategyPackage E} (I : EnvironmentalImpactPackage S) where
  carryingCapacity : Prop
  resilienceMeasure : Prop
  adaptationIndex : Prop
  intergenerationalEquity : Prop
  thresholdViolation : Prop

structure SustainabilityIndicatorsEvidence {E : EcosystemModelPackage} {S : SubsistenceStrategyPackage E} {I : EnvironmentalImpactPackage S} (Ind : SustainabilityIndicatorsPackage I) where
  carryingCapacityClosed : Ind.carryingCapacity
  resilienceMeasureClosed : Ind.resilienceMeasure
  adaptationIndexClosed : Ind.adaptationIndex
  intergenerationalEquityClosed : Ind.intergenerationalEquity
  thresholdViolationClosed : Ind.thresholdViolation

def SustainabilityIndicatorsClosed {E : EcosystemModelPackage} {S : SubsistenceStrategyPackage E} {I : EnvironmentalImpactPackage S} (Ind : SustainabilityIndicatorsPackage I) : Prop :=
  Ind.carryingCapacity ∧ Ind.resilienceMeasure ∧ Ind.adaptationIndex ∧ Ind.intergenerationalEquity ∧ Ind.thresholdViolation

theorem sustainability_indicators_closed_from_evidence
    {E : EcosystemModelPackage} {S : SubsistenceStrategyPackage E} {I : EnvironmentalImpactPackage S} (Ind : SustainabilityIndicatorsPackage I) (Ev : SustainabilityIndicatorsEvidence Ind) :
    SustainabilityIndicatorsClosed Ind := by
  exact And.intro Ev.carryingCapacityClosed
    (And.intro Ev.resilienceMeasureClosed
      (And.intro Ev.adaptationIndexClosed
        (And.intro Ev.intergenerationalEquityClosed Ev.thresholdViolationClosed)))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse
