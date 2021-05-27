class AddColumnToList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :movies_id, :integer
  end
end
