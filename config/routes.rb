ActionController::Routing::Routes.draw do |map|
  map.resources :feeds, :collection => { :refresh => :post }  
  map.resources :posts
  map.resources :users
  map.resource  :session
  map.resources :articles, :controller => 'posts', :has_many => :comments
  map.resources :quotes, :controller => 'posts'
  map.resources :pictures, :controller => 'posts'
  map.resources :tweets, :controller => 'posts'
  map.resources :links, :controller => 'posts'
  map.resources :comments, :member => { :report => :put }

  map.signup '/signup', :controller => 'users', :action => 'new'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  
  map.root :controller => 'posts'
end
