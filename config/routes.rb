Rails.application.routes.draw do

  resources :users
    get 'users' => 'users#index'

  resources :posts
    get   'posts'      =>  'posts#index'
    get   'posts/new'  =>  'posts#new'

  resources :comments

  resources :bookmarks
  resources :genre_places
  resources :places
  resources :prefectures
  resources :situations
  resources :original
    get 'search' => 'original#search'


    get 'original' => 'original#index'


end


