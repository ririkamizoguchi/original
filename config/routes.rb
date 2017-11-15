Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :posts
  resources :comments
  resources :bookmarks
  resources :genre_places
  resources :places
  resources :prefectures
  resources :situations
  resources :original
end






