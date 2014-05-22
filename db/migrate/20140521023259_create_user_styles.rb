class CreateUserStyles < ActiveRecord::Migration
  def change
    create_table :user_styles do |t|
      t.string :image_URL
      t.string :name

      t.timestamps

    end
  end
end
