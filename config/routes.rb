Filmbet::Application.routes.draw do
  get "users/index"
  get "users/show"

  resources :movies

   root :to => 'users#index'
   match "/auth/twitter/callback" => "sessions#create"
   match "signout" => "sessions#destroy", :as => :signout

   match "show" => "users#show"
end
