class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :archetype
      t.string :species
      t.integer :age
      t.string :eyes
      t.string :hair
      t.string :height
      t.integer :weight
      t.string :name
      t.string :distinguishing_features
      t.integer :xp

      t.timestamps
    end
  end
end
