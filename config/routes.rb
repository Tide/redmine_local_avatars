RedmineApp::Application.routes.draw do
  match 'users/save_avatar/:id', :controller => 'users', :action => 'save_avatar', :via => [:get, :post]
  match 'avatar/get_avatar/:id', :controller => 'avatar', :action => 'get_avatar', :via => :get
end

