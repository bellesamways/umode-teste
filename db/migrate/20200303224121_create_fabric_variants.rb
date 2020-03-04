class CreateFabricVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :fabric_variants do |t|
      t.string :name
      t.string :reference
      t.text :observation
      t.string :composition
      t.float :grammage
      t.float :width
      t.references :fabric, null: false, foreign_key: true

      t.timestamps
    end
  end
end
