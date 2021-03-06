Filmbet::Application.routes.draw do
  get "users/index"
  get "users/show"
  get "users/compare"

  resources :movies
  resources :users

   root :to => 'users#index'
   match "/auth/twitter/callback" => "sessions#create"
   match "signout" => "sessions#destroy", :as => :signout

   match "show" => "users#show"
   match "compare" => "users#compare"
end
