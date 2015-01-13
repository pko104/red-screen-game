class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :message, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
