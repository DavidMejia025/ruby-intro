class RenameManagerIdToBossId < ActiveRecord::Migration[5.0]
  def change
    rename_column :stores, :manager_id, :boss_id
  end
end

