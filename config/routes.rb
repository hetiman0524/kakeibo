Rails.application.routes.draw do
  devise_for :users
  root to: "cash_flows#index"
  resources :cash_flows, only: [:index]
  resources :expenses, only: [:new, :create, :show] do
    resources :expense_contents, only: [:destroy, :edit, :update]
  end
  resources :incomes, only: [:new, :create, :show, :edit, :update, :destroy] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
