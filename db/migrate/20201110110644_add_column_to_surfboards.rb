class AddColumnToSurfboards < ActiveRecord::Migration[6.0]
  def change
     add_column :surfboards, :price, :integer
  end
end
