class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.text :name
      t.text :address
      t.float :phone
      t.string :contact
      t.integer :preferences

      t.timestamps

    end
  end
end
