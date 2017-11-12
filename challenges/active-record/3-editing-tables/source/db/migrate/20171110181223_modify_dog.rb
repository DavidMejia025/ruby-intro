class ModifyDog < ActiveRecord::Migration
	def change
		add_column 	  :dogs, :breed, :string
		remove_column :dogs, :weight
	end
end