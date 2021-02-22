# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "json"
require 'open-uri'

Dose.destroy_all
Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
drink_serialized = open(url).read
drink = JSON.parse(drink_serialized)
list = drink["drinks"]
list.each do |drink|
  name = drink["strIngredient1"]
  Ingredient.create!(name: name)
end



