class Article < ApplicationRecord
# un article appartient à un user et une category
	belongs_to :user
	belongs_to :category
# un article a plusieurs comments et likes
	has_many :comments
	has_many :likes
end
