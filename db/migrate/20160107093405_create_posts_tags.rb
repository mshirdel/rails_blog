class CreatePostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags do |t|

      t.timestamps null: false
    end
  end
end
