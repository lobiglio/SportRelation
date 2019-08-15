Rails.application.routes.draw do
  devise_for :users
  root to: 'sportifs#index'

  resources :sportifs, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reservations, only: :create
  end
  resources :reservations, only: :index

  namespace :owner do
    resources :sportifs, only: :index
    resources :reservations, only: [:index, :update]
  end
end
