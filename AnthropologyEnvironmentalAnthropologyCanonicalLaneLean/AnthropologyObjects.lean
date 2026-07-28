import AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AnthropologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AnthropologyAdmittedObject where
  space : AnthropologySpace
  boundedAnthropocene : Prop
  environmentalJusticeNotion : Prop
  ecosystemModel : Type
  humanEnvironmentInteraction : Prop
  conclusion : humanEnvironmentInteraction

structure AnthropologyEndgameState where
  object : AnthropologyAdmittedObject

def AnthropologyWitnessClosed (O : AnthropologyAdmittedObject) : Prop :=
  O.humanEnvironmentInteraction

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse