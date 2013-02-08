BigosApp::Engine.routes.draw do
  devise_for :admin_users, {
      :class_name => "BigosApp::AdminUser",
      :module=> :devise,
      :path_names => { :sign_in => 'login', :sign_out => 'logout'}
  }

  namespace :admin do
    resources :pages, :page_templates, :settings
    root :to=>"pages#index"
  end

  resources :pages
  root :to=>"pages#index"
  match '/:id' => 'pages#show', :via => 'get'
end
