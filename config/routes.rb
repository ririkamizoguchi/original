Rails.application.routes.draw do
  devise_for :users
  root to: 'original#index'
  resources :users
    get 'users' => 'users#index'
    get 'users/:id' => 'users#show'

  resources :posts do
      resources :comments
    end
    get 'posts'  =>  'posts#index'
    get 'posts/new'  =>  'posts#new'
    get 'posts/:id' => 'posts#show'
    get 'posts/:id/edit' => 'posts#edit'
    delete 'posts/:id' => 'posts#destroy'


  resources :bookmarks
  resources :genre_places
  resources :places
  resources :prefectures
  resources :situations
  resources :original
    get 'search' => 'original#search'
    get 'original' => 'original#index'


end


