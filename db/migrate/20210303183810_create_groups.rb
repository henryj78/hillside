class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :type
      t.string :group_id
      t.string :achived_at
      t.string :contact_email
      t.string :description
      t.string :enrollment_open
      t.string :enrollment_strategy
      t.string :location_type_preference
      t.string :memberships_count
      t.string :name
      t.string :public_church_center_web_url
      t.string :schedule
      t.string :virual_location_url
      t.string :group_type
      t.string :group_type_id
      t.string :location_type
      t.string :location_id

      t.timestamps
    end
  end
end
