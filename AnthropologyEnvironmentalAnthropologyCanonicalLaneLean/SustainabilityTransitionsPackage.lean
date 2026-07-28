import AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.EcosystemFieldworkPackage

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure SustainabilityTransitionsPackage {F : EnvironmentalFieldworkData}
    (P : EcosystemFieldworkPackage F) where
  adaptiveGovernance : Prop
  socioEcologicalResilience : Prop
  decolonialFutures : Prop

def SustainabilityTransitionsClosed {F : EnvironmentalFieldworkData}
    {P : EcosystemFieldworkPackage F} (S : SustainabilityTransitionsPackage P) : Prop :=
  S.adaptiveGovernance ∧ S.socioEcologicalResilience ∧ S.decolonialFutures

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse