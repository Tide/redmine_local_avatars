ActionController::Routing::Routes.draw do |map|
  map.connect 'save_avatar/:id', :action => 'save_avatar', :controller => 'users'
  map.connect 'get_avatar/:id', :action => 'get_avatar', :controller => 'account'
end

