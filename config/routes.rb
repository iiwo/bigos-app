BigosApp::Engine.routes.draw do
  devise_for :admin_users, {
      :class_name => "BigosApp::AdminUser",
      :module=> :devise
  }

  namespace :admin do
    root :to=>"pages#index"
  end

end
