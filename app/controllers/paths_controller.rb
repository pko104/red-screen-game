class PathsController < ApplicationController

  def red
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
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
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.green_boxes.split(', ')
    @path.current_path << "Green, "
    if @game.hard == true
      flash.now[:notice]= "So it begins..."
    elsif @game.easy == true
      flash.now[:notice]= "Ahh you dipped your feet in"
    else
      flash.now[:notice]= "Once upon a time there was a square"
    end
    @path.save!
  end

  def cyan
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.cyan_boxes.split(', ')
    @path.current_path << "Cyan, "
    @path.save!
    if @game.hard == true
      flash.now[:notice]= "Come at me bro!"
    elsif @game.easy == true
      flash.now[:notice]= "Refreshing isn't it?"
    else
      flash.now[:notice]= "He wished he was a circle"
    end
  end

  def orange
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.orange_boxes.split(', ')
    @path.current_path << "Orange, "
    if @game.hard == true
      flash.now[:notice]= "Now we get serious."
    elsif @game.easy == true
      flash.now[:notice]= "You think you got this?"
    else
      flash.now[:notice]= "Choices... choices"
    end
    @path.save!
  end

  def purple
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.purple_boxes.split(', ')
    @path.current_path << "Purple, "
    if @game.hard == true
      flash.now[:notice]= "A/S/L?"
    else
      flash.now[:notice]= "Just give up."
    end
    @path.save!
  end

  def white
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.white_boxes.split(', ')
    @path.current_path << "White, "
    if @game.hard == true
      flash.now[:notice]= "Halfway There. You Square."
    else
      flash.now[:notice]= "Its not that one."
    end
    @path.save!
  end

  def darkred
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.darkred_boxes.split(', ')
    @path.current_path << "Darkred, "
    if @game.hard == true
      flash.now[:notice]= "Ohoho Someones Smart!"
    else
      flash.now[:notice]= "Winner winner chicken dinner?"
    end
    @path.save!
  end

  def pink
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.pink_boxes.split(', ')
    @path.current_path << "Pink, "
    flash.now[:notice]= "O snap son u think you got this?!"
    @path.save!
  end

  def yellow
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.yellow_boxes.split(', ')
    @path.current_path << "Yellow, "
    flash.now[:notice]= "SO CLOSEEEEE! NOW PRESS THAT ONE!"
    @path.save!
  end

  def blue
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    @path_array = @path.blue_boxes.split(', ')
    @path.current_path << "Blue, "
    flash.now[:notice]= "DONT MESS UP!!"
    @path.save!
  end

  def win
    @game = Game.find_by(id: params[:game_id])
    @path = Path.find_by(game_id: params[:game_id])
    @highscore = Highscore.find_by(game_id: @game.id)
    if current_user
      @highscore.user_id = current_user.id
    end
    @current_path_array = @path.current_path.split(',')
    @winning_path_array = @game.correct_path.split(',')
    @points = @current_path_array.length - @winning_path_array.length
    @highscore.scores = (100000 - (@points * 975))
    @highscore.save
    @game.save
  end

end
