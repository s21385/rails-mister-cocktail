class Ingredient < ApplicationRecord
  has_many :doses
  validations :name, uniqueness: true
end
