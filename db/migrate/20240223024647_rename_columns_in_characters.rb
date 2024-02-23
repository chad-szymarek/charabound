class RenameColumnsInCharacters < ActiveRecord::Migration[7.1]
  def change
    rename_column :characters, :Body, :body
    rename_column :characters, :Mind, :mind
    rename_column :characters, :Soul, :soul
    rename_column :characters, :Wounds, :wounds
    rename_column :characters, :Archetype, :archetype
    rename_column :characters, :Species, :species
  end
end
