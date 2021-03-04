class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.string :membership_type
      t.string :membership_id
      t.string :account_center_identifier
      t.string :avatar_url
      t.string :color_identifier
      t.string :email_address
      t.string :first_name
      t.string :joined_at
      t.string :last_name
      t.string :phone_number
      t.string :role
      t.string :group_type
      t.string :group_id
      t.string :person_type
      t.string :person_id

      t.timestamps
    end
  end
end
