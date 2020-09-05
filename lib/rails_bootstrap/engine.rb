module RailsBootstrap
  class Engine < ::Rails::Engine
    isolate_namespace RailsBootstrap
    require "view_component/engine"
  end
end
