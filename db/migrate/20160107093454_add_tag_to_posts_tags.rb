class AddTagToPostsTags < ActiveRecord::Migration
  def change
    add_reference :posts_tags, :tag, index: true, foreign_key: true
  end
end
