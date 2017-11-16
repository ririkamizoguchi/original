class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :password
      t.text :intro
      t.text :image
      t.integer :place_id
      t.timestamps
    end
  end
end

