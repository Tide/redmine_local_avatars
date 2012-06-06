ActionController::Routing::Routes.draw do |map|
  map.connect 'users/save_avatar/:id', :controller => 'users', :action => 'save_avatar', :conditions => {:method => [:get, :post]}
  map.connect 'users/get_avatar/:id', :controller => 'users', :action => 'get_avatar', :conditions => {:method => :get}
  map.connect 'account/get_avatar/:id', :controller => 'account', :action => 'get_avatar', :conditions => {:method => :get}
end

