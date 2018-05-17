class Cocktail < ApplicationRecord
  has_many :ingredients, through :doses
  has_many :doses, dependent: :destroy
  validations :name, uniqueness: true
end
