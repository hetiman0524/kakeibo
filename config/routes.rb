Rails.application.routes.draw do
  devise_for :users
  root to: "months#index"
  resources :months
  resources :categories
  resources :contents, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
