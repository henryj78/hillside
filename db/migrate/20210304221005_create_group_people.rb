class CreateGroupPeople < ActiveRecord::Migration[6.1]
  def change
    create_table :group_people do |t|
      t.string :gp_type
      t.string :gp_id
      t.string :first_name
      t.string :last_name
      t.string :permission
      t.string :phone_number

      t.timestamps
    end
  end
end
