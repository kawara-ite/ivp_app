Rails.application.routes.draw do
  root to: 'indicated_values#index'
  resources :admins, only: :index
end
