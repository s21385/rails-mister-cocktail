# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "salt")
Ingredient.create(name: "celery")
Ingredient.create(name: "rhum")
Ingredient.create(name: "vodka")
Ingredient.create(name: "water")
Ingredient.create(name: "lime")
Ingredient.create(name: "tomatoe")


Cocktail.create(name: "Crazy Lemon")
Cocktail.create(name: "Six on the Beach")
Cocktail.create(name: "Cuba Libra")
Cocktail.create(name: "Rhum and Cocaine")
Cocktail.create(name: "Gin Tony")
Cocktail.create(name: "Beer & Tomato Squeeze")

Dose.create(description: "pinch", ingredient_id: 1, cocktail_id: 1)
Dose.create(description: "cup", ingredient_id: 2, cocktail_id: 2)
Dose.create(description: "once", ingredient_id: 3, cocktail_id: 3)
Dose.create(description: "2 onces", ingredient_id: 4, cocktail_id: 4)
Dose.create(description: "slice", ingredient_id: 1, cocktail_id: 5)
Dose.create(description: "squeeze", ingredient_id: 5, cocktail_id: 6)
Dose.create(description: "3 cubes", ingredient_id: 6, cocktail_id: 6)

