class Admin::UsersController < ApplicationController
  before_action :check_admin

  def check_admin
    if !current_user.admin
      redirect_to root_path, notice: "Admins Only"
    end
  end

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_index_path, notice: "User successfully deleted."
  end
end
