# frozen_string_literal: true

class RailsBootstrap::BadgeComponent < ApplicationComponent
  
  VARIRANTIONS = ["primary", "secondary", "success", "danger", "warning", "light", "info", "dark"].freeze

  validates :variantion, inclusion: { in: VARIRANTIONS }
  validates :pill, inclusion: { in: [true, false] }

  def initialize(variantion: "primary", pill: false)
    @variantion = "badge-#{variantion}"
    @pill = pill ? "badge-pill" : ""
  end
  
  private 
    
    attr_reader :variantion, :pill
end
