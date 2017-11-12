class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string   :barcode
      t.string   :name
      t.integer  :quantity
      t.integer  :store_id

      t.timestamps
    end
  end
end
