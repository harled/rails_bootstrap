# frozen_string_literal: true

class RailsBootstrap::BadgeComponent < ApplicationComponent
  # rename variant to variation 
  # variant is a keyword in rails
  VARIATIONS = ["primary", "secondary", "success", "danger", "warning", "light", "info", "dark"].freeze

  validates :variation, inclusion: { in: VARIATIONS }
  validates :pill, inclusion: { in: [true, false] }

  def initialize(variation: "primary", pill: false)
    @variation = "badge-#{variation}"
    @pill = pill ? "badge-pill" : ""
  end

  private 
    
    attr_reader :variation, :pill
end
