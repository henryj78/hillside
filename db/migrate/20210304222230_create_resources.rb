class CreateResources < ActiveRecord::Migration[6.1]
  def change
    create_table :resources do |t|
      t.string :res_type
      t.string :res_id
      t.string :description
      t.string :last_updated
      t.string :name
      t.string :type
      t.string :visibility
      t.string :relationship_type
      t.string :relationship_id

      t.timestamps
    end
  end
end
