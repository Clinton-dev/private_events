Rails.application.routes.draw do
  get 'events/new'
  get 'events/show'
  get 'events/index'
  get 'log_out' => 'sessions#destroy', :as => "log_out"
  get 'log_in' => 'sessions#new', :as => "log_in"
  get 'sign_up' => 'users#new', :as => "sign_up"
  root to: 'users#new'
  resources :users, only: [:new, :create, :show]
  resources :sessions
  resources :events, only: [:new, :create, :index, :show]
end
