require_dependency "bigos_app/application_controller"

module BigosApp
  class PagesController < ApplicationController

    def index
      @page = BigosApp::Page.first
      render template: @page.template || "bigos_app/pages/show"
    end

    def show
      @page = BigosApp::Page.find(params[:id])
      render template: @page.render_template
    end

  end
end
