require_dependency "bigos_twitter_module/application_controller"

module BigosApp
  class PagesController < ApplicationController

    def index
      @page = BigosApp::Page.first
      render template: @page.template || "bigos_twitter_module/pages/show"
    end

    def show
      @page = BigosApp::Page.find(params[:id])
      render template: @page.render_template
    end

  end
end
