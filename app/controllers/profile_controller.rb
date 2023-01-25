class ProfileController < ApplicationController
  def index
  end

  def show
  end

  def update
    if current_user.update(profile_update_params.delete_if{ |key,value| value.blank? })
      redirect_to "/profile" , notice: 'Profile updated'
    else
      redirect_to "/"
    end

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
