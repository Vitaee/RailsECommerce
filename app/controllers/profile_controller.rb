class ProfileController < ApplicationController
  def index
  end

  def show
  end

  def update
    current_user.update(username: params[:username])
    redirect_to "/profile"
  end

end
