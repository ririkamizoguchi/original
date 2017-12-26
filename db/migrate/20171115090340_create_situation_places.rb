class CreateSituationPlaces < ActiveRecord::Migration
  def change
    create_table :situation_places do |t|
      t.references :situation
      t.references :place

      t.timestamps
    end
  end
end
