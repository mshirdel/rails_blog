class AddPostToPostsTags < ActiveRecord::Migration
  def change
    add_reference :posts_tags, :post, index: true, foreign_key: true
  end
end
