class CreateSmallAreas < ActiveRecord::Migration
  def change
    create_table :small_areas do |t|
      t.references :prefecture
      t.string :name
      t.timestamps
    end
  end
end
