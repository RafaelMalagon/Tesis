class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :t_description
      t.integer :n_practice
      t.integer :n_yestStep
      t.integer :n_noStep
      t.binary :t_typeStep
      t.integer :n_rol

      t.timestamps null: false
    end
  end
end
