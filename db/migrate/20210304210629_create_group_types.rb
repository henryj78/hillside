class CreateGroupTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :group_types do |t|
      t.string :grouptype_type
      t.string :grouptype_id
      t.string :church_center_visable
      t.string :church_center_map_visable
      t.string :color
      t.string :default_group_settings
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
