class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :tag_type
      t.string :tag_id
      t.string :name
      t.string :postion
      t.string :tag_group_type
      t.string :tag_group_id

      t.timestamps
    end
  end
end
