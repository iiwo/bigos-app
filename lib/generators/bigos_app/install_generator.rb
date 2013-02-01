module BigosApp
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a BigosApp initializer."
      def copy_initializer
        template "carrierwave.rb", "config/initializers/carrierwave.rb"
      end

      def include_routes
        route 'mount BigosApp::Engine => "/"'
      end

    end
  end
end