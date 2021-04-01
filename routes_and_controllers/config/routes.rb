Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users

  # get '/users', to: 'users#index', as: 'users'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get '/users/:id', to: 'users#show', as: 'show_user'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # post '/users', to: 'users#create'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'

  resources :users, only: [:index, :create, :destroy, :show, :update] do
    resources :artworks, only: [:index]
    resources :comments, only: [:index]
    
  end 

  resources :artworks, only: [:index, :create, :destroy, :show, :update] do
    member do
      post :favorite, to: 'artworks#favorite', as: 'favorite_artwork'
    end
  end

  resources :artwork_shares, only: [:index, :show, :create, :destroy] do
    member do
      post :favorite, to: 'artwork_shares#favorite', as: 'favorite_artwork_shares'
    end
  end

  resources :comments, only: [:index, :create, :destroy]  
end
