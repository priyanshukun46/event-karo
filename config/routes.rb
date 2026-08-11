Rails.application.routes.draw do
  devise_for :users
  resources :events 
  resources :attendances, only: [:create, :destroy]
  get "up" => "rails/health#show", as: :rails_health_check
  root "events#index"
end
