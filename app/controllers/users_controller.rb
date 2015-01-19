class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :can_edit]
  before_action :can_edit, only: [:edit, :update]

  def get_user
    @user = User.find(params[:id])
  end

  def update
    uploader = AvatarUploader.new
    @user.update(user_params)
    uploader.store!(params[:avatar])
    if @user.save
      redirect_to @user, notice: "User Profile Updated"
    else
      render :edit
    end
  end

  def show
    @uploader = AvatarUploader.new
  end

end
