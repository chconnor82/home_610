class CreateRoomPreferences < ActiveRecord::Migration
  def change
    create_table :room_preferences do |t|
      t.integer :type_one
      t.integer :type_two
      t.integer :type_three

      t.timestamps

    end
  end
end
