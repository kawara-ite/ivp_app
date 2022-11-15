Rails.application.routes.draw do
  devise_for :users
  devise_for :admins, controllers: {
    registrations: "admins/registrations"
 }
  root to: 'indicated_values#index'
  resources :admins, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
