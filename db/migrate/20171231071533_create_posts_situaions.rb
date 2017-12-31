class CreatePostsSituaions < ActiveRecord::Migration
  def change
    create_table :posts_situaions do |t|
      t.references :post
      t.references :situation

      t.timestamps null: false
    end
  end
end
