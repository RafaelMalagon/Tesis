class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :t_name
      t.string :t_logo
      t.string :t_slogan

      t.timestamps null: false
    end
  end
end
