class CreateProcessareas < ActiveRecord::Migration
  def change
    create_table :processareas do |t|
      t.integer :n_level
      t.string :t_name
      t.string :t_description

      t.timestamps null: false
    end
  end
end
