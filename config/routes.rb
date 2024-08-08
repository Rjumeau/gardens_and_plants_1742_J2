Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "gardens#index"
  resources :gardens do
    resources :plants, only: %i[create]
  end

  resources :plants, only: %i[destroy] do
    resources :completions, only: %i[new create]
  end
end
