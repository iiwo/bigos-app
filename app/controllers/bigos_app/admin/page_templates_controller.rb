require_dependency "bigos_twitter_module/admin/base_controller"

module BigosApp

  class Admin::PageTemplatesController < Admin::BaseController

    def new
      @page_template = BigosApp::PageTemplate.new
    end

    def edit
      @page_template = BigosApp::PageTemplate.find(params[:id])
      @elements = JSON.parse(@page_template.elements) unless @page_template.elements.blank?
    end

    def show
      @page_template = BigosApp::PageTemplate.find(params[:id])
      @elements = JSON.parse(@page_template.elements) unless @page_template.elements.blank?
    end

    def create
      @page_template = BigosApp::PageTemplate.new(params[:page_template])
      @page_template.elements = params[:elements].to_json

      if (@page_template.save)
        redirect_to action: :show, :id => @page_template.id
      else
        redirect_to action: :new
      end
    end

    def update
      @page_template = BigosApp::PageTemplate.find(params[:id])
      @page_template.elements = params[:elements].to_json
      if (@page_template.update_attributes(params[:page_template ]))
        redirect_to action: :show, :id => @page_template.id
      else
        redirect_to action: :edit, :id => @page_template.id
      end
    end

    def destroy
      @page_template = BigosApp::PageTemplate.find(params[:id])
      @page_template.destroy

      redirect_to admin_root_path
    end

  end

end