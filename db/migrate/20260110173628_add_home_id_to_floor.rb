class AddHomeIdToFloor < ActiveRecord::Migration[8.1]
  def change
    add_reference :floors, :home, null: false, foreign_key: true
  end
end
