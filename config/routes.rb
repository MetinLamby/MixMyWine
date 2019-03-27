Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :ingredients, only: [:index]
  resources :wines, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
end
