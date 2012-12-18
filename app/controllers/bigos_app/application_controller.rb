module BigosApp
  class ApplicationController < ActionController::Base
    layout "bigos-app/application"
    before_filter :load_menu_data

    private
    def load_menu_data
      @pages = BigosApp::Page.root
      @page_templates = BigosApp::PageTemplate.all
    end

  end
end
