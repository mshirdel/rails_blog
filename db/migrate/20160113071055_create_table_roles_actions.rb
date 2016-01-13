class CreateTableRolesActions < ActiveRecord::Migration
  def change
    create_table :actions_roles do |t|
    	t.references  :role, :action
    end
  end
end
