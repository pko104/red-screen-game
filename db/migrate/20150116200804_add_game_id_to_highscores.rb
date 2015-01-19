class AddGameIdToHighscores < ActiveRecord::Migration
  def change
    add_column :highscores, :game_id, :integer
    remove_column :games, :highscore_id, :integer
  end
end
