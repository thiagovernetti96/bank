Rails.application.routes.draw do
  root to: "pages#index"
  resources :bank_accounts
  resources :clients do
    resources :bank_accounts, controller: "clients/bank_accounts", except: [:index, :show, :destroy]
  end  
end
