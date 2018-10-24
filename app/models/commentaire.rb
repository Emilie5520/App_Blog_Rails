class Commentaire < ApplicationRecord
	def change
	t.belongs_to :articles, optional: true
    t.belongs_to :users, optional: true
	end
end
