require_dependency "bigos_app/application_controller"

module BigosApp
  class Admin::BaseController < ApplicationController
    before_filter :authenticate_admin_user!
  end
end
