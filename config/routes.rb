Rails.application.routes.draw do
  devise_for :users
  resources :water_liter_delivereds
  resources :districts
  resources :projects
  resources :users

  root to: "projects#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
