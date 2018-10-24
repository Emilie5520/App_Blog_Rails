# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do 
	users = User.create!(first_name: Faker::Superhero.name, last_name: Faker::Pokemon.name, email: Faker::Internet.email)
end

10.times do 
	articles = Article.create!(title: Faker::Friends.character, content: Faker::Dessert.topping, users_id: rand(1..10)) 
end

5.times do 
	categories = Categorie.create!(name: Faker::Coffee.origin)
end

Article.all.each do |article|
article.update(categories_id: rand(1..10))
end

15.times do
	commentaires = Commentaire.create!(content: Faker::Coffee.origin, articles_id: rand(1..10), users_id: rand(1..10))
end

15.times do
	like = Like.create(articles_id: rand(1..10), users_id: rand(1..10))
end