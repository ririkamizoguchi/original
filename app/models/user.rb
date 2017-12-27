class User < ActiveRecord::Base

  validates :email, presence: true
  validates :nickname, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments

  mount_uploader :image, ImageUploader

end



