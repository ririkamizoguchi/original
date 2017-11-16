class CreateSituationPlaces < ActiveRecord::Migration
  def change
    create_table :situation_places do |t|
      t.reference :situation
      t.reference :place

      t.timestamps null: false
    end
  end
end
