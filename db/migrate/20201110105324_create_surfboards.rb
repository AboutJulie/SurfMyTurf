class CreateSurfboards < ActiveRecord::Migration[6.0]
  def change
    create_table :surfboards do |t|
      t.string :name
      t.string :type
      t.string :location
      t.boolean :availability, default: true

      t.timestamps
    end
  end
end
