class Article < ApplicationRecord
	def change 
	belongs_to :users, optional: true
	belongs_to :categories, optional: true
	has_many :commentaires
	has_many :likes
	end
end
