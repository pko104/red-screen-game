class ChatsController < ApplicationController
  def index
    @chat = Chat.new
    @chats = Chat.all
    @chat_grid = initialize_grid(@chats, :name => "chatroom")
  end

  def create
    @chat = Chat.new(chat_params)
    if current_user
      @chat.user_id = current_user.id
    else
      @chat.user_id = 0
    end
    if @chat.save
      respond_to do |format|
        format.html { redirect_to chats_path, notice: "Message Posted!" }
        format.json { render :show }
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
    params.require(:chat).permit(:message)
  end

end
