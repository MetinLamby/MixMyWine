

puts 'Cleaning database...'
puts 'Destroying all doses...'
Dose.destroy_all
puts 'Destroying all wines...'
Wine.destroy_all
puts 'Destroying all ingredients...'
Ingredient.destroy_all


# Seeding all the ingredients

wine_ingredients = ["Heavy", "Strong", "Sweet", "Sparkling", "Acidic", "Earthy", "Fruity", "Creamy"]

wine_ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end

# Seeding all the wines

puts 'Creating Wines...'
wines = [
  {
    name:         'Sizzling Red Summer',
  },
  {
    name:         'Neon Carrot Dream',
  },
  {
    name:         'Olive Drab Mellow',
  },
  {
    name:         'Flirt At Night',
  },
  {
    name:         'Sunglow In Dark',
  },
  {
    name:         'Blue Jeans Beauty',
  },
]
Wine.create!(wines)
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
