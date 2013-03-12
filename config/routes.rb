AspergersDating::Application.routes.draw do
  devise_for :users

  devise_for :users, :controllers => {:registrations => "users"}
  
  devise_scope :user do
    get "users/browse", :to => "profiles#browse", :as => :browse
    get "users/:id", :to => "profiles#show", :as => :user
    get "inbox", :to => "messages#inbox", :as => :inbox
    get "message/:id", :to => "messages#message", :as => :message
#    post "send_message", :to => "messages#send", :as => :send_message
  end
  
  match "send_message" => "messages#send_message"
  match "reply_message" => "messages#reply_message"
#  match "messages/inbox" => "messages#inbox" #"home#index" #"messaging#inbox"
#  match "messages/message/:id" => "messages#message" #"home#index" #"messaging#show"

  root :to => "home#index"
end
