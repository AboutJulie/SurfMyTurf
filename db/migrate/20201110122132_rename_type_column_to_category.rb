class RenameTypeColumnToCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :surfboards, :type, :category
  end
end
