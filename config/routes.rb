Rails.application.routes.draw do
  devise_for :users
  get 'editions/new'

  get 'editions/show'

  get 'editions/edit'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  resources :editions, only: [:new, :create, :edit, :update, :destroy]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
