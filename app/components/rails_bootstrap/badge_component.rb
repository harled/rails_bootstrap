# frozen_string_literal: true

class RailsBootstrap::BadgeComponent < ApplicationComponent
  # rename variant to variation 
  # variant is a keyword in rails
  VARIATIONS = ["primary", "secondary", "success", "danger", "warning", "light", "info", "dark"].freeze

  validates :variation, inclusion: { in: VARIATIONS }
  validates :pill, inclusion: { in: [true, false] }

  def initialize(variation: "primary", pill: false)
    @variation = variation
    @pill = pill
  end

  def styles
    pill_class = "badge-pill" unless !pill
    variation_class = "badge-#{variation}"
    style = "badge #{pill_class} #{variation_class}"
  end
  
  private 
    
    attr_reader :variation, :pill
end
