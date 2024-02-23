class Spell < ApplicationRecord
  # Validates that all the attributes are present
  validates :name, :dn, :target, :range, :duration, :overcast, :description, :spell_test, presence: true
  belongs_to :character, optional: true
end
