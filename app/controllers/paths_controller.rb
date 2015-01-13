class PathsController < ApplicationController

  def red
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.red_boxes.split(', ')
    if @path.current_path == ""
    @path.current_path << "Red, "
    else
    flash.now[:notice]= "HAHA!"
    end
    @path.save!
  end

  def green
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.green_boxes.split(', ')
    @path.current_path << "Green, "
    @path.save!
  end

  def cyan
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.cyan_boxes.split(', ')
    @path.current_path << "Cyan, "
    @path.save!
  end

  def orange
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.orange_boxes.split(', ')
    @path.current_path << "Orange, "
    @path.save!
  end

  def purple
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.purple_boxes.split(', ')
    @path.current_path << "Purple, "
    @path.save!
  end

  def white
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.white_boxes.split(', ')
    @path.current_path << "White, "
    @path.save!
  end

  def darkred
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.darkred_boxes.split(', ')
    @path.current_path << "Darkred, "
    flash.now[:notice]= "Ohoho Someones Smart!"
    @path.save!
  end

  def pink
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.pink_boxes.split(', ')
    @path.current_path << "Pink, "
    flash.now[:notice]= "O snap son u think you got this?!"
    @path.save!
  end

  def yellow
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.yellow_boxes.split(', ')
    @path.current_path << "Yellow, "
    flash.now[:notice]= "SO CLOSEEEEE!"
    @path.save!
  end

  def blue
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
    @path_array = @path.blue_boxes.split(', ')
    @path.current_path << "Blue, "
    flash.now[:notice]= "DONT MESS UP!!"
    @path.save!
  end

  def win
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(id: @game.highscore_id)
  end



end
