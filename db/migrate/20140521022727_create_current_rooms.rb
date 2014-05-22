class CreateCurrentRooms < ActiveRecord::Migration
  def change
    create_table :current_rooms do |t|
      t.float :height
      t.float :width
      t.integer :room_type

      t.timestamps

    end
  end
end
