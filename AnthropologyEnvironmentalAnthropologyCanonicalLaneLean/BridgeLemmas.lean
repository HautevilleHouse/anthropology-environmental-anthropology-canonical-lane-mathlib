import AnthropologyEnvironmentalAnthropologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EnvironmentalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse