class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.text :current_path, null: false
      t.integer :user_id, null: false
      t.integer :game_id, null: false
    end
  end
end
