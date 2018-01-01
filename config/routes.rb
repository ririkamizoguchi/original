Rails.application.routes.draw do
  root to: 'original#index'
  resources :original, only: :index

  devise_for :users
  resources :users, only: [:index, :show, :edit, :create, :update] do
    resources :bookmarks, only: [:index, :create, :destroy]
  end


  resources :posts do
    collection do
      get 'search'
      post 'search'
    end

  resources :comments, only: [:create, :edit, :update,:destroy]
end

  resources :situations, only: [:new, :create]
  resources :prefectures

end

