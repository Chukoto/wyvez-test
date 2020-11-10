class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def new
    @profile = Profile.new    
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @profile = Profile.find_by(user_id: params[:id])
  end

  def edit
    @profile = Profile.find_by(user_id: params[:id])
  end

  def update
    @profile = Profile.find_by(user_id: params[:id])
    if @profile.update(profile_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:trans_exp_id, :papa_exp_id, :text).merge(user_id: current_user.id)
  end
end
