class Admin::ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to admin_chats_path, notice: "chat successfully deleted."
  end
end
