class AddSpellsTestToSpells < ActiveRecord::Migration[7.1]
  def change
    rename_column :spells, :spells_test, :spell_test
  end
end
