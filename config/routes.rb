Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'home#top'
  get 'terms_of_use', to: 'home#terms_of_use'
  get 'privacy_policy', to: 'home#privacy_policy'
  get '/posts', to: 'posts#index'
  resources :users, only: [:show]
  resources :spots do
    resources :favorites, only: [:create, :destroy]
    resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
    collection do
      get 'search'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
