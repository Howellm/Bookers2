Rails.application.routes.draw do
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  devise_for :users
  resources :books, only: [:show, :index, :edit, :destroy]
  resources :users, only: [:show]
end
