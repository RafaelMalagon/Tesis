class AddGoalIdToPractices < ActiveRecord::Migration
  def change
    add_reference :practices, :goal, index: true, foreign_key: true
  end
end
