class ProfilesController < ApplicationController
  before_action :require_login # Ensure only logged-in users access profiles

  def show
    @profile = Current.user.profile
  end

  def edit
    @profile = Current.user.profile
  end

  def update
    @profile = Current.user.profile
    if @profile.update(profile_params)
      redirect_to @profile, notice: "Profile updated successfully!"
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name) # Library code is NOT editable
  end
end

