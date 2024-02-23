class DropCharacterTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :characters
  end
end
