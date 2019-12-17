Rails.application.routes.draw do
  devise_for :users
  root to: "months#index"
  resources :months
  resources :categories
  resources :contents, only: [:new, :create]
  resources :moneys do
    member do
      get "income", to: "moneys#income"
      get "expense", to: "moneys#expense"
      get "cash_flow", to: "moneys#cash_flow"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
