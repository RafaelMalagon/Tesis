class AddRolesIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :roles, index: true, foreign_key: true
    add_forenign_key :users, :roles
  end
end
