Rails.application.routes.draw do
  root "products#index"
  # resources :food_tags 
  resources :products do
    resources :reviews
  end
end