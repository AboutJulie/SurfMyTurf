class DeleteColumnsFromSurfboards < ActiveRecord::Migration[6.0]
  def change
    remove_column :surfboards, :latitude, :float
    remove_column :surfboards, :longitude, :float
  end
end
