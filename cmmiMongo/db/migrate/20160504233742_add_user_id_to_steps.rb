class AddUserIdToSteps < ActiveRecord::Migration
  def change
    add_reference :steps, :user, index: true, foreign_key: true
  end
end
