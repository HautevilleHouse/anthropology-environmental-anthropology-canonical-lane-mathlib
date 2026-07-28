import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEnvironmentalAnthropologyCanonicalLaneLean

structure EcologicalFootprintPackage where
  biocapacity : Prop
  footprintPerCapita : Prop
  overshootDay : Prop
  sustainabilityTransition : Prop

structure EcologicalFootprintEvidence (E : EcologicalFootprintPackage) where
  biocapacityClosed : E.biocapacity
  footprintPerCapitaClosed : E.footprintPerCapita
  overshootDayClosed : E.overshootDay
  sustainabilityTransitionClosed : E.sustainabilityTransition

def EcologicalFootprintClosed (E : EcologicalFootprintPackage) : Prop :=
  E.biocapacity ∧ E.footprintPerCapita ∧ E.overshootDay ∧ E.sustainabilityTransition

theorem ecological_footprint_closed_from_evidence (E : EcologicalFootprintPackage)
    (Ev : EcologicalFootprintEvidence E) : EcologicalFootprintClosed E := by
  exact And.intro Ev.biocapacityClosed
    (And.intro Ev.footprintPerCapitaClosed
      (And.intro Ev.overshootDayClosed Ev.sustainabilityTransitionClosed))

end AnthropologyEnvironmentalAnthropologyCanonicalLaneLean
end HautevilleHouse