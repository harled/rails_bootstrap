# frozen_string_literal: true

class RailsBootstrap::BadgeComponent < ApplicationComponent

  VARIATIONS = ["primary", "secondary", "success", "danger", "warning", "light", "info", "dark"].freeze

  validates :variation, inclusion: { in: VARIATIONS }
  validates :pill, inclusion: { in: [true, false] }

  def initialize(variation: "primary", pill: false)
    @variation = variation
    @pill = pill
  end

  def styles
    "badge" + pill_class + variation_class
  end

  private
    
    def pill_class
      @pill ? " badge-pill" : ""
    end 

    def variation_class
      " badge-#{@variation}"
    end
    
    attr_reader :variation, :pill

end
