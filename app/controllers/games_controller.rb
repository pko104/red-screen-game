class GamesController < ApplicationController

  def random_string
    @random_string = SecureRandom.hex(3)
  end

  def index
    @user = current_user
  end

  def new
    @user = current_user
  end

  def hard
    @game = Game.create(correct_path: "Red,Green,Cyan,Orange,Purple,White,Darkred,Pink,Yellow,Blue", hard: true)
    @highscore = Highscore.create(scores: 0, user_id: 0, game_id: @game.id)
    @path = Path.new
    @path.current_path = ""
    @path.game_id = @game.id
    if current_user
      @path.user_id = current_user.id
    else
      @path.user_id = 0
    end

    red_boxes = Array.new
    9.times do
      red_boxes << green_game_paths_path(@game.id)
    end

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
      red_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
       ]

    @path.orange_boxes = orange_boxes.shuffle.join(', ')

    purple_boxes = [
      cyan_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      red_game_paths_path(@game.id)
       ]

    @path.purple_boxes = purple_boxes.shuffle.join(', ')

    white_boxes = [
      green_game_paths_path(@game.id),
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
      green_game_paths_path(@game.id),
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
      green_game_paths_path(@game.id),
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

    @path.win_boxes = "Good job you have bested me."

    if current_user
      @path.user_id = current_user.id
      @highscore.user_id = current_user.id
    end
    if @path.save
      redirect_to red_game_paths_path(@game.id), notice: "You aint ready. Much frustration. Such wow."
    end
  end

  def create
    @game = Game.create(correct_path: "Red,Green,Cyan,Orange,Purple,White,Darkred")
    @highscore = Highscore.create(scores: 0, user_id: 0, game_id: @game.id)
    @path = Path.new
    @path.current_path = ""
    @path.game_id = @game.id
    if current_user
      @path.user_id = current_user.id
    else
      @path.user_id = 0
    end

    red_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id)
       ]

    @path.red_boxes = red_boxes.shuffle.join(', ')

    green_boxes = [
      red_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id)
       ]

    @path.green_boxes = green_boxes.shuffle.join(', ')

    cyan_boxes = [
      red_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
       ]

    @path.cyan_boxes = cyan_boxes.shuffle.join(', ')

    orange_boxes = [
      red_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
       ]

    @path.orange_boxes = orange_boxes.shuffle.join(', ')

    purple_boxes = [
      orange_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
       ]

    @path.purple_boxes = purple_boxes.shuffle.join(', ')

    white_boxes = [
      cyan_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
      darkred_game_paths_path(@game.id)
       ]

    @path.white_boxes = white_boxes.shuffle.join(', ')

    darkred_boxes = [
      orange_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      white_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id),
      purple_game_paths_path(@game.id),
      red_game_paths_path(@game.id)
       ]

    @path.darkred_boxes = darkred_boxes.shuffle.join(', ')


    @path.pink_boxes = ""
    @path.yellow_boxes = ""
    @path.blue_boxes = ""

    @path.win_boxes = "Try a harder one next time you pansy."

    if current_user
      @path.user_id = current_user.id
      @highscore.user_id = current_user.id
    end
    if @path.save
      redirect_to red_game_paths_path(@game.id), notice: "O you want more huh?"
    end
  end

  def easy
    @game = Game.create(correct_path: "Red,Green,Cyan,Orange", easy: true)
    @highscore = Highscore.create(scores: 0, user_id: 0, game_id: @game.id)
    @path = Path.new
    @path.current_path = ""
    @path.game_id = @game.id
    if current_user
      @path.user_id = current_user.id
    else
      @path.user_id = 0
    end

    red_boxes = [
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
       ]

    @path.red_boxes = red_boxes.shuffle.join(', ')

    green_boxes = [
      red_game_paths_path(@game.id),
      red_game_paths_path(@game.id),
      cyan_game_paths_path(@game.id)
       ]

    @path.green_boxes = green_boxes.shuffle.join(', ')

    cyan_boxes = [
      red_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
      orange_game_paths_path(@game.id),
       ]

    @path.cyan_boxes = cyan_boxes.shuffle.join(', ')

    orange_boxes = [
      red_game_paths_path(@game.id),
      win_game_paths_path(@game.id),
      green_game_paths_path(@game.id),
       ]

    @path.orange_boxes = orange_boxes.shuffle.join(', ')

    @path.purple_boxes = ""
    @path.pink_boxes = ""
    @path.darkred_boxes = ""
    @path.white_boxes = ""
    @path.yellow_boxes = ""
    @path.blue_boxes = ""

    @path.win_boxes = "That was an easy one."

    if current_user
      @path.user_id = current_user.id
      @highscore.user_id = current_user.id
    end
    if @path.save
      redirect_to red_game_paths_path(@game.id), notice: "GAME STARTO"
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path

  end

end

