Rails.application.routes.draw do
  resources :water_liter_delivereds
  resources :districts
  resources :projects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
