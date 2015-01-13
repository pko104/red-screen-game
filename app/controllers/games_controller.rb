class GamesController < ApplicationController

  def index
  end

  def create
    @highscore = Highscore.create(scores: 0, user_id: 0)
    @game = Game.create(correct_path: "Red,Green,Cyan,White,Purple,Black,Teal,Pink,Yellow,Blue", highscore_id: @highscore.id)
    @path = Path.new
    @path.current_path = ""
    @path.game_id = @game.id
    @path.user_id = 0

    red_boxes = [
      cyan_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id)
       ]

    @path.red_boxes = red_boxes.shuffle.join(', ')

    green_boxes = [
      cyan_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id)
       ]

    @path.green_boxes = red_boxes.shuffle.join(', ')

    @path.green_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.green_boxes = red_boxes.shuffle.join(', ')

    @path.green_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.green_boxes = red_boxes.shuffle.join(', ')

    @path.green_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.green_boxes = red_boxes.shuffle.join(', ')

    @path.green_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.green_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.green_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.green_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.green_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    if current_user
      @path.user_id = current_user.id
      @highscore.user_id = current_user.id
    end
    if @path.save
      redirect_to green_game_paths_path(@game.id), notice: "GAME STARTO"
    end
  end

  def show
  end

end

