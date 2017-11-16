class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|

      t.string :name
      t.integer :prefecture_id
      t.timestamps
    end
  end
end
