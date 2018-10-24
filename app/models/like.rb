class Like < ApplicationRecord
	def change 
	belongs_to :users, optional: true
	belongs_to :articles, optional: true
end
end
