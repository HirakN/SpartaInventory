class AddSupplierToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :supplier, foreign_key: true
  end
end
