class PostsSituaion < ActiveRecord::Base
  belongs_to :post
  belongs_to :situation
end
