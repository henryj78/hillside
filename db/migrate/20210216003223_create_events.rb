class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_type
      t.string :event_id
      t.string :event_attributes_canceled
      t.string :event_attributes_canceled_at
      t.string :event_attributes_ends_at
      t.string :ea_location_type
      t.string :ea_multi_day
      t.string :ea_name
      t.string :ea_starts_at
      t.string :ea_virtual_location
      t.string :ras_type
      t.string :ras_id
      t.string :rl_type
      t.string :rl_id

      t.timestamps
    end
  end
end
