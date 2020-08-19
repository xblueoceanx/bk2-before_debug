Rails.application.routes.draw do
  devise_for :users
  get 'home/about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:newform, :create, :index, :show, :edit, :destroy, :update]
  root 'home#top'
end