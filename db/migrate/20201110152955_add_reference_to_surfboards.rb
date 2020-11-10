class AddReferenceToSurfboards < ActiveRecord::Migration[6.0]
  def change
    add_reference :surfboards, :user, foreign_key: true
  end
end
