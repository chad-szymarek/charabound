class Character < ApplicationRecord
  validates :body, :mind, :soul, :wounds, :archetype, :species, presence: true
  has_many :spells
end
