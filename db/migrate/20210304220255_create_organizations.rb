class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :organ_type
      t.string :organ_id
      t.string :name

      t.timestamps
    end
  end
end
