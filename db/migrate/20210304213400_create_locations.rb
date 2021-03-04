class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :location_type
      t.string :location_id
      t.string :display_preference
      t.string :full_formatted_address
      t.string :latitude
      t.string :longitude
      t.string :name
      t.string :radius
      t.string :strategy

      t.timestamps
    end
  end
end
