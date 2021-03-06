Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  resources :twitter_accounts

  resources :social_accounts, only: [:index, :destroy]
  root "posts#new_if_logged_in?"
end
