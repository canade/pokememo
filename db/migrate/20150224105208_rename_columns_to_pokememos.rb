class RenameColumnsToPokememos < ActiveRecord::Migration
  def change
  	rename_column :pokememos, :staH, :H
  	rename_column :pokememos, :staA, :A
  	rename_column :pokememos, :staB, :B
  	rename_column :pokememos, :staC, :C
  	rename_column :pokememos, :staD, :D
  	rename_column :pokememos, :staS, :S
  end
end
