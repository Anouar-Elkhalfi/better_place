Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :projects, except: [:index] do
    member do
      get :artisans
    end
    resources :project_requests, only: [:create]
    resources :estimates, only: [:create]
  end

  resources :project_requests, only: [:destroy]
  resources :estimates, only: [:update, :destroy, :show]
  get "/dashboard", to: "pages#dashboard"

  get "up" => "rails/health#show", as: :rails_health_check

end
