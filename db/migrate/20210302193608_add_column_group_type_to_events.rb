class AddColumnGroupTypeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :group_type, :string
    add_column :events, :group_id, :string
    add_column :events, :location_type, :string
    add_column :events, :location_id, :string
  end
end
