class ChangeWidthToBeFloatInPools < ActiveRecord::Migration[5.2]
  def change
    change_column :pools, :width, :float
  end
end
