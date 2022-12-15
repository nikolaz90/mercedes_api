class AddUserToGeolocations < ActiveRecord::Migration[7.0]
  def change
    add_reference :geolocations, :user, null: false, foreign_key: true
  end
end
