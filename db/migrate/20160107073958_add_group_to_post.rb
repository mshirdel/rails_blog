class AddGroupToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :group, index: true, foreign_key: true
  end
end
