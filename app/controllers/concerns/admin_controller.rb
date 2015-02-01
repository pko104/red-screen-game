class AdminController < ApplicationController
  def index
    if !current_user.admin
      flash[:notice] = "Admins Only"
      redirect_to root_path
    end
  end
end
