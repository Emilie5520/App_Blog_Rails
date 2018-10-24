class Categorie < ApplicationRecord
	def change
	has_many :articles
end
end
