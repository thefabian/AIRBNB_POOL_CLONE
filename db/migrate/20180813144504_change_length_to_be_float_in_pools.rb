class ChangeLengthToBeFloatInPools < ActiveRecord::Migration[5.2]
  def change
    change_column :pools, :length, :float
  end
end
