class AddPostIdToPrefectures < ActiveRecord::Migration
  def change
    add_reference :prefectures, :post
  end
end
