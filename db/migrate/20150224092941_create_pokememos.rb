class CreatePokememos < ActiveRecord::Migration
  def change
    create_table :pokememos do |t|
      t.string :name
      t.string :item
      t.string :ability
      t.string :move1
      t.string :move2
      t.string :move3
      t.string :move4
      t.integer :staH
      t.integer :staA
      t.integer :staB
      t.integer :staC
      t.integer :staD
      t.integer :staS
      t.string :nature

      t.timestamps
    end
  end
end
