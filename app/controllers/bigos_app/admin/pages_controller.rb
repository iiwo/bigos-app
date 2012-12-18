require_dependency "bigos_app/admin/base_controller"

module BigosApp
  class Admin::PagesController < Admin::BaseController

    def new
      @page = BigosApp::Page.new
    end

    def show
    end

    def create
      @page = BigosApp::Page.new(params[:page])
      if (@page.save)
        redirect_to action: :show, :id=>@page.id
      else
        redirect_to action: :new
      end
    end

  end
end
