class RenameTypeInPools < ActiveRecord::Migration[5.2]
  def change
    rename_column :pools, :type, :category
  end
end
