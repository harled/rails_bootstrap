# frozen_string_literal: true

class RailsBootstrap::ContainerComponent < ApplicationComponent
  
  FLUID_TYPES = [true, false, "sm", "md", "lg", "xl"].freeze

  validates :fluid, inclusion: { in: FLUID_TYPES }

  def initialize(fluid: false, **options)
    @fluid = fluid

    options.tap do |options|
      @class_name = options.delete(:class_name)   || ""
    end
  end

  def styles
    class_name + bootstrap_specific_styles
  end

  private

    attr_reader :fluid, :class_name

    def bootstrap_specific_styles
      fluid ? prefix + suffix : prefix
    end

    def prefix
      " container"
    end

    def suffix
      fluid.is_a?(String) ? "-#{fluid}" : "-fluid"
    end
end
