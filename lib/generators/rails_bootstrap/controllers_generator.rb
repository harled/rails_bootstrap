require 'rails/generators'

module RailsBootstrap
  module Generators
    class ControllersGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..", __FILE__)

      def copy_components
        directory 'app/javascript/controllers', 'app/javascript/controllers'
      end
    end
  end
end