Rails.application.routes.draw do
  resources :contacts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get "/contact", to: "contacts#contact"
  get "/past", to: "pages#past"
  get "/upcoming", to: "pages#upcoming"
  get "/bank", to: "pages#bank"
end
