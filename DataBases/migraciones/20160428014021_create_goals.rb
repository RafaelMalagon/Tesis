class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :n_processArea
      t.string :t_name
      t.string :t_description
      t.string :t_type

      t.timestamps null: false
    end
  end
end
