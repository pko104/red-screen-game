class CreateHighscores < ActiveRecord::Migration
  def change
    create_table :highscores do |t|
      t.integer :scores, null: false
      t.integer :user_id, null: false
    end
  end
end


