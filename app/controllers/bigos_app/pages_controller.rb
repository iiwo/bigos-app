require_dependency "bigos_app/application_controller"

module BigosApp
  class PagesController < ApplicationController

    def index
      @page = BigosApp::Page.first
      render template: @page.render_template unless @page.blank?
    end

    def show
      @page = BigosApp::Page.find(params[:id])
      render template: @page.render_template unless @page.blank?
    end

  end
end
