Rails.application.routes.draw do
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  devise_for :users
  get '/about', to: 'homes#about'
  resources :books, only: [:create, :show, :index, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit,:update]
end
