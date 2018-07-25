class User < ApplicationRecord
# un user est l'auteur de plusieurs articles comments et likes
	has_many :articles
	has_many :comments
	has_many :likes
end
