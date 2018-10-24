class AddCategorieToArticle < ActiveRecord::Migration[5.2]
  def change
  	  	add_reference :article, :categorie, foreign_key: true
  end
end
