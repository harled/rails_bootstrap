$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_bootstrap/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rails_bootstrap"
  spec.version     = RailsBootstrap::VERSION
  spec.authors     = ["Aman Patel"]
  spec.email       = ["amanpatel@gmail.com"]
  spec.homepage    = "https://github.com/amanpatel123/rails_bootstrap"
  spec.summary     = "Summary of RailsBootstrap."
  spec.description = "Description of RailsBootstrap."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.2"
  spec.add_dependency "view_component"
  
  spec.add_development_dependency "rspec-rails", '~> 4.0'
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "sqlite3"
end
