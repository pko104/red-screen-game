class CreateHighScores < ActiveRecord::Migration
  def change
    create_table :high_scores do |t|
      t.integer :scores, null: false
      t.integer :user_id, null: false
    end
  end
end
