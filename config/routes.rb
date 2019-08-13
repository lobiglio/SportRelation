Rails.application.routes.draw do
  devise_for :users
  root to: 'sportifs#index'

  resources :sportifs, only: [:index, :show, :new, :create, :edit, :update]
  resources :reservations, only: :index

end
