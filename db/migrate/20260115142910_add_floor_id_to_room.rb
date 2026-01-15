class AddFloorIdToRoom < ActiveRecord::Migration[8.1]
  def change
    add_reference :rooms, :floor, null: false, foreign_key: true
  end
end
