Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :friendship
  resources :friend_requests
  resources :notes
  resources :collections

  get 'users/show'
  get 'friends/index'
  get 'friends/destroy'
  get 'welcome/index'

  authenticated :user do
    root 'notes#index', as: "authenticated_root" #notes controller, index action
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
