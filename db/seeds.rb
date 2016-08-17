# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


brands = ['generic']

categories = ['Produce',
	      'Fruits',
	      'Greens',
	      'Juices',
	      'Dairy & Cheese',
	      'Seasons & Dressings']

products = [ ['Strawberry', 1, 0, 'Strawberry Description', 2, 1 ] ]

brands.each do |brand|
  Brand.create(name: brand)
end

categories.each do |category|
  Category.create(name: category)
end

products.each do |product|
  Product.create(name: product[0])
  Product.create(price: product[1])
  Product.create(quantity: product[2])
  Product.create(description: product[3])
  Product.create(category_id: product[4])
  Product.create(brand_id: product[5])
end

