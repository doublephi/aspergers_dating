AspergersDating::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users"}
  
  devise_scope :user do
    get "users/browse", :to => "profiles#browse", :as => :browse
    get "users/:id", :to => "profiles#show", :as => :user
  end

  root :to => "home#index"
end
