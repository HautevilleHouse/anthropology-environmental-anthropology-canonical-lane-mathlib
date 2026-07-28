import HautevilleHouse.AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.SubsistenceStrategy

/-!
# Environmental Impact Package
-/

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure EnvironmentalImpactPackage {E : EcosystemModelPackage} (S : SubsistenceStrategyPackage E) where
  habitatAlteration : Prop
  resourceDepletion : Prop
  pollutionLevel : Prop
  biodiversityLoss : Prop
  climateRipple : Prop

structure EnvironmentalImpactEvidence {E : EcosystemModelPackage} {S : SubsistenceStrategyPackage E} (I : EnvironmentalImpactPackage S) where
  habitatAlterationClosed : I.habitatAlteration
  resourceDepletionClosed : I.resourceDepletion
  pollutionLevelClosed : I.pollutionLevel
  biodiversityLossClosed : I.biodiversityLoss
  climateRippleClosed : I.climateRipple

def EnvironmentalImpactClosed {E : EcosystemModelPackage} {S : SubsistenceStrategyPackage E} (I : EnvironmentalImpactPackage S) : Prop :=
  I.habitatAlteration ∧ I.resourceDepletion ∧ I.pollutionLevel ∧ I.biodiversityLoss ∧ I.climateRipple

theorem environmental_impact_closed_from_evidence
    {E : EcosystemModelPackage} {S : SubsistenceStrategyPackage E} (I : EnvironmentalImpactPackage S) (Ev : EnvironmentalImpactEvidence I) :
    EnvironmentalImpactClosed I := by
  exact And.intro Ev.habitatAlterationClosed
    (And.intro Ev.resourceDepletionClosed
      (And.intro Ev.pollutionLevelClosed
        (And.intro Ev.biodiversityLossClosed Ev.climateRippleClosed)))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse
