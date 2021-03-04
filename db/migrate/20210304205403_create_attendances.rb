class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.string :a_type
      t.string :a_id
      t.string :atended
      t.string :role
      t.string :person_type
      t.string :person_id
      t.string :event_type
      t.string :event_id

      t.timestamps
    end
  end
end
