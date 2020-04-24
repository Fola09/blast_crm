$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "blast/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "blast_core"
  spec.version     = Blast::Core::VERSION
  spec.authors     = ["fola09"]
  spec.email       = ["folaolayiwola.fo@gmail.com"]
  spec.homepage    = "http://fola09.com"
  spec.summary     = "Core features of blast_crm"
  spec.description = "Core features of blast_crm"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.4", ">= 5.2.4.2"
  spec.add_dependency "sass-rails"
  spec.add_dependency "jquery-rails"
  spec.add_dependency "bootstrap"
  spec.add_dependency "devise"
  spec.add_dependency "pundit"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "bootsnap"
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "faker"
  spec.add_development_dependency "rspec-rails"
end
