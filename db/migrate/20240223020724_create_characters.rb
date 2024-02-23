class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.integer :Body
      t.integer :Mind
      t.integer :Soul
      t.integer :Wounds
      t.string :Archetype
      t.string :Species

      t.timestamps
    end
  end
end
