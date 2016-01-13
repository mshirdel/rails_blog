class CreateActionCategories < ActiveRecord::Migration
  def change
    create_table :action_categories do |t|
      t.string :name
      t.integer :display_sort_order
      t.boolean :active

      t.timestamps null: false
    end
  end
end
