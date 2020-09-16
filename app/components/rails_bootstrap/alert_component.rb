# frozen_string_literal: true

class RailsBootstrap::AlertComponent < ApplicationComponent
  
  VARIATION_TYPES = [
      "primary", 
      "secondary",
      "success",
      "danger",
      "warning",
      "info",
      "dark",
      "light"
  ].freeze

  validates :variation, inclusion: { in: VARIATION_TYPES }
  validates :show, inclusion: { in: [true, false] }

  def initialize(variation: "primary", show: true)
    @variation = variation
    @show = show
  end

  def style
    "fade alert alert-#{variation}" + visible
  end

  private

    attr_reader :variation, :show

    def visible
      show ? " show" : ""
    end
end
