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

# Seeding all the wine types

wine_types = ["red", "white", "rose", "sekt"]

wine_types.each do |type|
  Winetype.create(name: type)
end

# Seeding all the ingredients

# wine_ingredients = ["Heavy", "Strong", "Sweet", "Sparkling", "Acidic", "Earthy", "Fruity", "Creamy"]

wine_ingredients = ["Heavy", "Bitter", "Sweet", "Sparkling", "Confetti", "Sour", "Fruity", "Creamy"]


wine_ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end


# Seeding all the wines

puts 'Creating Wines...'
9.times do |wine|
  wine = Wine.new(name: Faker::Nation.capital_city, winetype_id: Winetype.all.sample.id)
  wine.save
end
puts 'Created 4 wine'


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
