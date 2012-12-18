require_dependency "bigos_app/application_controller"

module BigosApp
  class PagesController < ApplicationController

    def index
      @page = BigosApp::Page.first
      render template: "bigos_app/pages/show"
    end

  end
end
