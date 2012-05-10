AspergersDating::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users"}
  
  devise_scope :user do
    get "users/:id", :to => "profiles#show"
  end

  root :to => "home#index"
end
