Rails.application.routes.draw do
  get 'indicated_values/index'
  devise_for :users
  devise_for :admins
  root to: 'indicated_values#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
