require_dependency "bigos_twitter_module/admin/base_controller"

module BigosApp
  class Admin::PagesController < Admin::BaseController

    def new
      @page = BigosApp::Page.new
      @files = Dir.glob("app/views/bigos_twitter_module/pages/*")
    end

    def edit
      @page = BigosApp::Page.find(params[:id])
      @files = Dir.glob("app/views/bigos_twitter_module/pages/*")
    end

    def show
      @page = BigosApp::Page.find(params[:id])
    end

    def create
      @page = BigosApp::Page.new(params[:page])
      @page_template = BigosApp::PageTemplate.find params[:page][:page_template_id]

      if (@page.save)
       @page_template.getPageElements @page.id
        redirect_to action: :show, :id=>@page.id
      else
        redirect_to action: :new
      end
    end

    def update
      @page = BigosApp::Page.find(params[:id])
      if (@page.update_attributes(params[:page]))
        redirect_to action: :show, :id => @page.id
      else
        redirect_to action: :edit, :id => @page.id
      end
    end

    def destroy
      @page = BigosApp::Page.find(params[:id])
      @page.destroy

      redirect_to admin_root_path
    end


  end
end
