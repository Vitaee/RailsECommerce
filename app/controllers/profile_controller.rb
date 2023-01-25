class ProfileController < ApplicationController
  def index
  end

  def show
  end

  def update
    current_user.update(profile_update_params)
    redirect_to "/profile"
  end

  private
  def profile_update_params
    temp_hash = {}
    temp_hash["country"] = params[:country]
    temp_hash["phone"] = params[:phone]
    temp_hash["adress"] = params[:adress]
    temp_hash["username"] = params[:username]
    temp_hash
  end


end
