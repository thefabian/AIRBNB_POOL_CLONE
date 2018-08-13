class ChangePriceToBeFloatInPools < ActiveRecord::Migration[5.2]
  def change
    change_column :pools, :price, :float
  end
end
