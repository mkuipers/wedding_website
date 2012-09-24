class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :address
      t.string :song_suggestion
      t.boolean :attending

      t.timestamps
    end
  end
end
