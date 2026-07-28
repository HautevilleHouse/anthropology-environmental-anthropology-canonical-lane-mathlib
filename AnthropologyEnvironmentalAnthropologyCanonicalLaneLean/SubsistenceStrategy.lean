import HautevilleHouse.AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.EcosystemModel

/-!
# Subsistence Strategy Package
-/

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure SubsistenceStrategyPackage (E : EcosystemModelPackage) where
  resourceExtraction : Prop
  seasonalMobility : Prop
  populationDensity : Prop
  territorialBoundaries : Prop
  sustainabilityPractices : Prop

structure SubsistenceStrategyEvidence {E : EcosystemModelPackage} (S : SubsistenceStrategyPackage E) where
  resourceExtractionClosed : S.resourceExtraction
  seasonalMobilityClosed : S.seasonalMobility
  populationDensityClosed : S.populationDensity
  territorialBoundariesClosed : S.territorialBoundaries
  sustainabilityPracticesClosed : S.sustainabilityPractices

def SubsistenceStrategyClosed {E : EcosystemModelPackage} (S : SubsistenceStrategyPackage E) : Prop :=
  S.resourceExtraction ∧ S.seasonalMobility ∧ S.populationDensity ∧ S.territorialBoundaries ∧ S.sustainabilityPractices

theorem subsistence_strategy_closed_from_evidence
    {E : EcosystemModelPackage} (S : SubsistenceStrategyPackage E) (Ev : SubsistenceStrategyEvidence S) :
    SubsistenceStrategyClosed S := by
  exact And.intro Ev.resourceExtractionClosed
    (And.intro Ev.seasonalMobilityClosed
      (And.intro Ev.populationDensityClosed
        (And.intro Ev.territorialBoundariesClosed Ev.sustainabilityPracticesClosed)))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse
