class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|

      t.reference :post_id
      t.reference :user_id
      t.timestamps
    end
  end
end

