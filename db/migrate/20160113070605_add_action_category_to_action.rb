class AddActionCategoryToAction < ActiveRecord::Migration
  def change
  	add_reference :actions, :action_category, index: true, foreign_key: true
  end
end
