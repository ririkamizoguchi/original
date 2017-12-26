class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|

      t.string :name
      t.references :prefecture
      t.timestamps
    end
  end
end
