Rails.application.routes.draw do
  resources :items

  #root path
  root "items#index"

    #All Items route; displays all items including those that are soft-deleted 
    get "/inventory", to: "items#inventory"

  #Items route; displays items that have not been soft-deleted
  get "/items", to: "items#index"



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
