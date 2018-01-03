class AddPrefectureIdToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :prefecture
  end
end
