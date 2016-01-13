class CreateTableUsersRoles < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
    	t.references :user, :role
    end
  end
end
