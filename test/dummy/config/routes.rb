Rails.application.routes.draw do
  devise_for :admin_users, {
      :class_name => "BigosApp::AdminUser",
      :module=> :devise
  }
  mount BigosApp::Engine => "/"
end
