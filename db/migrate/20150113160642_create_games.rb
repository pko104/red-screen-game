class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :correct_path, null: false
      t.integer :highscore_id, null: false
    end
  end
end
