Rails.application.routes.draw do
  devise_for :admin_users, {
      :class_name => "BigosApp::AdminUser",
      :module=> :devise,
      :path_names => { :sign_in => 'login', :sign_out => 'logout'}
  }
  mount BigosApp::Engine => "/"
end
