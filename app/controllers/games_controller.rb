class GamesController < ApplicationController

  def index
  end

  def create
    @highscore = Highscore.create(scores: 0, user_id: 0)
    @game = Game.create(correct_path: "Red,Green,Cyan,Orange,Purple,White,Darkred,Pink,Yellow,Blue", highscore_id: @highscore.id)
    @path = Path.new
    @path.current_path = ""
    @path.game_id = @game.id
    @path.user_id = 0

    red_boxes = [
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

    @path.green_boxes = green_boxes.shuffle.join(', ')

    cyan_boxes = [
      orange_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.cyan_boxes = cyan_boxes.shuffle.join(', ')

    orange_boxes = [
      red_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id)
       ]

    @path.orange_boxes = orange_boxes.shuffle.join(', ')

    purple_boxes = [
      cyan_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      red_game_paths_path(@game.id)
       ]

    @path.purple_boxes = purple_boxes.shuffle.join(', ')

    white_boxes = [
      darkred_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      darkred_game_paths_path(@game.id),
      darkred_game_paths_path(@game.id)
       ]

    @path.white_boxes = white_boxes.shuffle.join(', ')

    darkred_boxes = [
      pink_game_paths_path(@game.id),
      pink_game_paths_path(@game.id),
      pink_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      red_game_paths_path(@game.id)
       ]

    @path.darkred_boxes = darkred_boxes.shuffle.join(', ')

    pink_boxes = [
      yellow_game_paths_path(@game.id),
      yellow_game_paths_path(@game.id),
      darkred_game_paths_path(@game.id),
      darkred_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      red_game_paths_path(@game.id)
       ]

    @path.pink_boxes = pink_boxes.shuffle.join(', ')

    yellow_boxes = [
      red_game_paths_path(@game.id),
      darkred_game_paths_path(@game.id),
      pink_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      pink_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      blue_game_paths_path(@game.id)
       ]

    @path.yellow_boxes = yellow_boxes.shuffle.join(', ')

    blue_boxes = [
      win_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      red_game_paths_path(@game.id)
       ]

    @path.blue_boxes = blue_boxes.shuffle.join(', ')

    @path.win_boxes = "Good job you have bested me. You Win. Can you do it again though?"

    if current_user
      @path.user_id = current_user.id
      @highscore.user_id = current_user.id
    end
    if @path.save
      redirect_to red_game_paths_path(@game.id), notice: "GAME STARTO"
    end
  end

  def show
  end

  def new
  end

end

