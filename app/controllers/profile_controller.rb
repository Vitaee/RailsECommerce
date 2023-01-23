class ProfileController < ApplicationController
  def index
  end

  def show
  end

  def update
    profile_params = params.delete_if{ |key,value| key=="authenticity_token" || key=="_method" || key=="controller" || key=="action" || key=="id" || value.blank? }
    current_user.update(profile_params)
    redirect_to "/profile"
  end


end
