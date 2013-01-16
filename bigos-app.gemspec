$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bigos-app/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bigos-app"
  s.version     = BigosApp::VERSION
  s.authors     = ["Iwo Dziechciarow", "Artur Kremens"]
  s.email       = ["iiwo@o2.pl", "kremenso@o2.pl"]
  s.homepage    = "tremor.pl"
  s.summary     = "Bigos Restaurant CMS Application Engine"
  s.description = "Bigos Restaurant CMS Application Engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "jquery-rails"
  s.add_dependency "sass-rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "compass-rails"
  s.add_dependency "zurb-foundation"
  s.add_dependency "devise"
  s.add_dependency "cancan"
  s.add_dependency "simple_roles"
  s.add_dependency "simple_form"
  s.add_dependency 'table_helper'
  s.add_dependency 'kaminari'
  s.add_dependency 'carrierwave'
  s.add_dependency 'yettings'
  s.add_dependency 'jquery-ui-rails'
  s.add_dependency "remotipart", "~> 1.0"
  s.add_dependency "tinymce-rails"

  s.add_development_dependency "pg"
end
