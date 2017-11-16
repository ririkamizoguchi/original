class CreatePrefectures < ActiveRecord::Migration
  def change
    create_table :prefectures do |t|
      t.string :prefecture
      t.timestamps
    end
  end
end
