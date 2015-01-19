class HighscoresController < ApplicationController
  def index
    @easy_games = Game.where(easy: true)
    @easy_highscores = Highscore.where(game_id: @easy_games).order(scores: :desc)
    @easy_tasks_grid = initialize_grid(@easy_highscores, :name => "easy_highscores")

    @med_games = Game.where(easy: false, hard: false)
    @med_highscores = Highscore.where(game_id: @med_games).order(scores: :desc)
    @med_tasks_grid = initialize_grid(@med_highscores, :name => "med_highscores")

    @hard_games = Game.where(hard: true)
    @hard_highscores = Highscore.where(game_id: @hard_games).order(scores: :desc)
    @hard_tasks_grid = initialize_grid(@hard_highscores, :name => "hard_highscores")

  end
end
