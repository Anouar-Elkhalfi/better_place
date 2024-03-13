Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: "pages#home"

  resources :projects, except: [:index] do
    member do
      get :artisans
    end

    resources :project_requests, only: [:create]
    resources :estimates, only: [:create]
    resources :messages, only: [:create]
  end

  resources :project_requests, only: [:destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :estimates, only: [:update, :destroy, :show]
  get "/dashboard", to: "pages#dashboard"

  get "up" => "rails/health#show", as: :rails_health_check

end
