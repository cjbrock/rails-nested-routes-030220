class Ingredient < ApplicationRecord
  belongs_to :sushi, optional: true

  validates :name, presence: true
end
