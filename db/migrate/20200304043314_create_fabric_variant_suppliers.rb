class CreateFabricVariantSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :fabric_variant_suppliers do |t|
      t.float :price_cents
      t.string :price_currency
      t.string :price_unit
      t.float :min_purchase
      t.references :fabric_variant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
