require_dependency "bigos_app/application_controller"

module BigosApp
  class PagesController < ApplicationController

    def index
      @page = BigosApp::Page.first
      render template: "bigos_app/pages/show"
    end

    def show
      @page = BigosApp::Page.find(params[:id])

    end

  end
end
