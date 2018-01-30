class Post < ActiveRecord::Base
    belongs_to :user
    belongs_to :prefecture
    belongs_to :smallarea
    has_many :comments
    has_many :bookmarks
    has_many :situaions, through: :posts_situaions
    has_many :posts_situaions, dependent: :destroy

    acts_as_taggable_on :labels
    acts_as_taggable

    # validates :text,    length: { minimum: 5 }
end
