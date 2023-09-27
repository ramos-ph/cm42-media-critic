Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope "/api" do
    get "/health", to: "health#index"

    resources :games, only: [:index, :create, :show, :destroy]
  end
end
