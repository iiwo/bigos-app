require_dependency "bigos_twitter_module/application_controller"

module BigosApp
  class Admin::BaseController < ApplicationController
    layout "bigos-app/admin"
    before_filter :authenticate_admin_user!

    private
    def load_menu_data
      @pages = BigosApp::Page.root
      @page_templates = BigosApp::PageTemplate.all
    end

  end
end
