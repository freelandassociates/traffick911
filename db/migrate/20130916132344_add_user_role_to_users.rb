class AddUserRoleToUsers < ActiveRecord::Migration
  def up
  	add_column :users, :user_role, :string
  end
  
  def down
  	remove_column :users, :user_role
  end
end
