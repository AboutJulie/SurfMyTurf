class AddAnotherColumnToSurfboards < ActiveRecord::Migration[6.0]
  def change
    add_column :surfboards, :description, :text
  end
end
