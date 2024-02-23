class AddCharacterToSpells < ActiveRecord::Migration[7.1]
  def change
    add_reference :spells, :character, null: true, foreign_key: true
  end
end
