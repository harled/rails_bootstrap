require 'rails/generators'

module RailsBootstrap
  module Generators
    class ComponentsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..", __FILE__)

      def copy_components
        directory 'app/components/rails_bootstrap', 'app/components/rails_bootstrap'
      end
    end
  end
end