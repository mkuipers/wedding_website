class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.integer :invite_id
      t.string :address

      t.timestamps
    end
  end
end
