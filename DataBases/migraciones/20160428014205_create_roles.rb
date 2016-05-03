class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :t_roleName

      t.timestamps null: false
    end
  end
end
