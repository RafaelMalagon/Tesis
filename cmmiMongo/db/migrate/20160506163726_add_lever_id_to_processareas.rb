class AddLeverIdToProcessareas < ActiveRecord::Migration
  def change
    add_reference :processareas, :level, index: true, foreign_key: true
  end
end
