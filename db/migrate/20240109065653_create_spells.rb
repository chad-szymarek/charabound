class CreateSpells < ActiveRecord::Migration[7.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :dn
      t.string :target
      t.string :range
      t.string :duration
      t.string :overcast
      t.text :description

      t.timestamps
    end
  end
end
