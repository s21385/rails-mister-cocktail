class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validations :description, presence: true, :cocktail_id, presence: true, :ingredient_id, presence: true
end
