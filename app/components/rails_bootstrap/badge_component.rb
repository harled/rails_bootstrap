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
    "badge #{pill_class} #{variation_class}"
  end

  def pill_class
    @pill ? "badge-pill" : ""
  end 

  def variation_class
    "badge-#{@variation}"
  end

  private 
    
    attr_reader :variation, :pill
end
