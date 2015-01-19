class ChatsController < ApplicationController
  def index

    @chat = Chat.new
    @chats = Chat.all
    @chat_grid = initialize_grid(@chats, :name => "chatroom")
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.user_id = current_user.id
    if @chat.save
      respond_to do |format|
        format.html { redirect_to chats_path, notice: "Message Posted!" }
        format.json { render json: @chat }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json
      end
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:user_id, :created_at, :message)
  end

end
