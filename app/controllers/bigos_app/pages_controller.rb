require_dependency "bigos_app/application_controller"

module BigosApp
  class PagesController < ApplicationController

    def index
      @page = BigosApp::Page.first
      check_page
      render template: @page.render_template unless @page.blank?
    end

    def show
      @page = BigosApp::Page.find(params[:id])
      check_page
      render template: @page.render_template unless @page.blank?
    end

    private
    def check_page
      if @page.page_elements.blank?
        @page = @page.subpages.first unless @page.subpages.blank?
      end
    end

  end
end
