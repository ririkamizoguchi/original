class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|

      t.references :post
      t.references :user
      t.timestamps
    end
  end
end

