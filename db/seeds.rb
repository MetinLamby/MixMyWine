require 'faker'


puts 'Cleaning database...'
puts 'Destroying all doses...'
Dose.destroy_all
puts 'Destroying all wines...'
Wine.destroy_all
puts 'Destroying all ingredients...'
Ingredient.destroy_all
puts 'Destroying all wine types...'
Winetype.destroy_all
puts 'Destroyed the whole database content'

# Seeding all the wine types

wine_types = ["red", "white", "rose", "sekt"]

wine_types.each do |type|
  Winetype.create!(name: type)
end

# Seeding all the ingredients

# wine_ingredients = ["Heavy", "Strong", "Sweet", "Sparkling", "Acidic", "Earthy", "Fruity", "Creamy"]

wine_ingredients = ["Heavy", "Bitter", "Sweet", "Sparkling", "Confetti", "Sour", "Fruity", "Creamy"]


wine_ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end


# Seeding all the wines

puts 'Creating Wines...'
Wine.create!(name: "Berlin", price: 10, sku:"berlin", winetype_id: Winetype.all[1].id)
Wine.create!(name: "Paris", price: 10, sku:"paris", winetype_id: Winetype.all[2].id)
Wine.create!(name: "New York", price: 10, sku:"new-york", winetype_id: Winetype.all[1].id)
Wine.create!(name: "London", price: 10, sku:"london", winetype_id: Winetype.all[0].id)
Wine.create!(name: "Istanbul", price: 10, sku:"istanbul", winetype_id: Winetype.all[0].id)
Wine.create!(name: "Rio", price: 10, sku:"rio", winetype_id: Winetype.all[3].id)
Wine.create!(name: "Shanghai", price: 10, sku:"shanghai", winetype_id: Winetype.all[2].id)
Wine.create!(name: "Moscow", price: 10, sku:"moscow", winetype_id: Winetype.all[0].id)
Wine.create!(name: "Sydney", price: 10, sku:"sydney", winetype_id: Winetype.all[3].id)
Wine.create!(name: "Rome", price: 10, sku:"rome", winetype_id: Winetype.all[0].id)
Wine.create!(name: "Tokyo", price: 10, sku:"tokyo", winetype_id: Winetype.all[3].id)
Wine.create!(name: "Mykonos", price: 10, sku:"sydney", winetype_id: Winetype.all[2].id)
puts 'Created 12 wines'


# Seeding all the doses

Wine.all.each do |wine|
  random_ingredient = Ingredient.all.sample(1 + rand(Ingredient.all.count))
  random_ingredient.each do |ingredient|
    dose = Dose.new
    dose.ingredient_id = ingredient.id
    dose.wine_id = wine.id
    dose.save!
  end
end
