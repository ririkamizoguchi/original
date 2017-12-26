class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.string :situation
      t.timestamps
    end
  end
end




