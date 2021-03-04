class CreateTagGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_groups do |t|
      t.string :taggroup_type
      t.string :taggroup_id
      t.string :name
      t.string :position
      t.string :display_publicly
      t.string :multiple_options_enabled

      t.timestamps
    end
  end
end
