Rails.application.routes.draw do


  root to: 'homes#top'
  devise_for :users
  get 'homes/about', to: 'homes#about', as: 'about'
  resources :users, only: [:edit, :show, :index, :update]
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
