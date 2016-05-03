class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :t_name
      t.string :t_description
      t.integer :n_goal

      t.timestamps null: false
    end
  end
end
