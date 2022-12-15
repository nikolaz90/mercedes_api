class CreateGeolocations < ActiveRecord::Migration[7.0]
  def change
    create_table :geolocations do |t|
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
