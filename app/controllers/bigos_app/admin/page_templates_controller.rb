require_dependency "bigos_app/admin/base_controller"

module BigosApp
  class Admin::PageTemplatesController < Admin::BaseController
    def new
      @page_template = BigosApp::PageTemplate.new
    end

    def show
    end

    def create
      @page_template = BigosApp::PageTemplate.new(params[:page_template])
      if (@page_template.save)
        redirect_to action: :show, :id => @page_template.id
      else
        redirect_to action: :new
      end
    end
  end
end
