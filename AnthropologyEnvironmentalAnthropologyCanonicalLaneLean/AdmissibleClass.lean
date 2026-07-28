import AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure AdmissibleClass where
  object : EnvironmentalAnthropologyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EnvironmentalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse