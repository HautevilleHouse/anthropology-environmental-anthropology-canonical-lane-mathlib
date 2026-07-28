import AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.AdmissibleClass

/-!
# Ecological Systems Package
-/

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure EcologicalSystemsPackage where
  ecosystemDynamics : Prop
  humanEnvironmentInteraction : Prop
  resilienceThresholds : Prop
  adaptiveCapacity : Prop

structure EcologicalSystemsEvidence (E : EcologicalSystemsPackage) where
  ecosystemDynamicsClosed : E.ecosystemDynamics
  humanEnvironmentInteractionClosed : E.humanEnvironmentInteraction
  resilienceThresholdsClosed : E.resilienceThresholds
  adaptiveCapacityClosed : E.adaptiveCapacity

def EcologicalSystemsClosed (E : EcologicalSystemsPackage) : Prop :=
  E.ecosystemDynamics ∧ E.humanEnvironmentInteraction ∧
  E.resilienceThresholds ∧ E.adaptiveCapacity

theorem ecological_systems_closed_from_evidence (E : EcologicalSystemsPackage)
    (Ev : EcologicalSystemsEvidence E) : EcologicalSystemsClosed E := by
  exact And.intro Ev.ecosystemDynamicsClosed
    (And.intro Ev.humanEnvironmentInteractionClosed
      (And.intro Ev.resilienceThresholdsClosed Ev.adaptiveCapacityClosed))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse