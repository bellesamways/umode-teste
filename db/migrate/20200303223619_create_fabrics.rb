class CreateFabrics < ActiveRecord::Migration[6.0]
  def change
    create_table :fabrics do |t|
      t.string :name, null: false
      t.string :reference
      t.text :observation

      t.timestamps
    end
  end
end
