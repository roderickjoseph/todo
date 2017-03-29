class AlterItemsAddCreatedBy < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :created_by, :string
  end
end
