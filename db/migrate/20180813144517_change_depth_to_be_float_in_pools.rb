class ChangeDepthToBeFloatInPools < ActiveRecord::Migration[5.2]
  def change
    change_column :pools, :depth, :float
  end
end
