class AddUserToCommentaire < ActiveRecord::Migration[5.2]
  def change
  	add_reference :commentaires, :users, foreign_key:true
  end
end
