class AddProcessareaIdToGoals < ActiveRecord::Migration
  def change
    add_reference :goals, :processarea, index: true, foreign_key: true
  end
end
