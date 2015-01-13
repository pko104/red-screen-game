class PathsController < ApplicationController

  def red
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path.current_path << "Red,"
    @path.save!
  end

  def green
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path.current_path << "Green,"
    @path.save!
  end

  def cyan
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path.current_path << "Cyan,"
    @path.save!
  end

  def white
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path.current_path << "White,"
    @path.save!
  end

  def purple
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path.current_path << "Purple,"
    @path.save!
  end

end
