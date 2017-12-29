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

end


require 'net/http'
require 'uri'
require 'rexml/document'

url = URI.parse(URI.escape("http://jws.jalan.net/APICommon/AreaSearch/V1/?key=and1609fe48610&reg=40"))
res = Net::HTTP.start(url.host, url.port){|http|
    http.get(url.path + "?" + url.query);
}

doc = REXML::Document.new(res.body)

doc.elements.each('results/Prefecture/') {|i|puts i.elements['name'].text}

