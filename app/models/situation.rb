class Situation < ActiveRecord::Base
    has_many :posts, through: :posts_situations
    has_many :posts_situations, dependent: :destroy

end
