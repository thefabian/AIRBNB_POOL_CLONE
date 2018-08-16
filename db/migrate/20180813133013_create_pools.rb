class CreatePools < ActiveRecord::Migration[5.2]
  def change
    create_table :pools do |t|
      t.string :title
      t.text :address
      t.integer :price
      t.integer :capacity
      t.string :category
      t.text :description
      t.integer :length
      t.integer :depth
      t.integer :width

      t.timestamps
    end
  end
end
