# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

#To asign ( via Class User) 10 random Users' (first_name last_name and email
10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do
  article = Article.create(title: Faker::Friends.character, content: Faker::DrWho.quote, user_id: rand(1..10))
end

10.times do
	category = Category.create(name: Faker::RickAndMorty.location)
end

#To asign a fake category randomly to an article
Article.all.each do |article|
article.update(category_id: rand(1..10))
end

20.times do
	comment = Comment.create(comment: Faker::HowIMetYourMother.quote, article_id: rand(1..10), user_id: rand(1..10))
end

# Assigne 15 likes à la table via la Classe Like avec les id de la table user et article choisi aléatoirement
15.times do
	like = Like.create(article_id: rand(1..10), user_id: rand(1..10))
end