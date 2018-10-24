class AddArticleToCommentaire < ActiveRecord::Migration[5.2]
  def change
  	add_reference :commentaires, :articles, foreign_key:true
  end
end
