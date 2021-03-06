Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resources :winetypes, only: [:index] do
    resources :wines, only: [:index]
  end

  # get '/winetypes', to: 'winetypes#index'
  # resources :ingredients, only: [:index]
  # # resources :doses, only: [:destroy]
  # resources :wines, only: [:index, :show, :new, :create] do
  #   resources :doses, only: [:new, :create, :destroy]
  #   # resources :ingredients, only: [:destroy]
  # end


  get '/winetypes', to: 'winetypes#index'
  resources :ingredients, only: [:index]
  # resources :doses, only: [:destroy]
  resources :wines, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
    # resources :ingredients, only: [:destroy]
  end
end
