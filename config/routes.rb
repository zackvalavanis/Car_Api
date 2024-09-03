Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/cars" => "cars#index"
  get "/cars/:id" => "cars#show"
  post "/cars" => "cars#create"
  patch "/cars/:id" => "cars#update"
  delete "cars/:id" => "cars#destroy"

  # Defines the root path route ("/")
  # root "posts#index"
end
