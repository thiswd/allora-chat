Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy, :index]

  resources :editions, only: [:new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'weather'
    end
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
