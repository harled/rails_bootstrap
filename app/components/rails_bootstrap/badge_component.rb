# frozen_string_literal: true

class RailsBootstrap::BadgeComponent < ApplicationComponent
  
  VARIRANTS = ["primary", "secondary", "success", "danger", "warning", "light", "info", "dark"].freeze

  validates :variant, inclusion: { in: VARIRANTS }
  validates :pill, inclusion: { in: [true, false] }

  def initialize(variant: "primary", pill: false)
    @variant = variant
    @pill = pill 
  end
  private 
    
    attr_reader :variant, :pill
end
