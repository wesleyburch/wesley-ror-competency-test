Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :articles
      resources :categories

      root to: "users#index"
    end
  root to: "articles#index"
  devise_for :user
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
