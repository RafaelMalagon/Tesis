class AddPracticeIdToSteps < ActiveRecord::Migration
  def change
    add_reference :steps, :practice, index: true, foreign_key: true
  end
end
