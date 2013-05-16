class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find_by_id(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new
    @profile.picture_id = params[:picture_id]
    @profile.user_id = params[:user_id]
    @profile.professional_id = params[:professional_id]
    @profile.requirement_id = params[:requirement_id]
    
    if @profile.save
            redirect_to profiles_url
          else
      render 'new'
    end
  end

  def edit
    @profile = Profile.find_by_id(params[:id])
  end

  def update
    @profile = Profile.find_by_id(params[:id])
    @profile.picture_id = params[:picture_id]
    @profile.user_id = params[:user_id]
    @profile.professional_id = params[:professional_id]
    @profile.requirement_id = params[:requirement_id]
    
    if @profile.save
            redirect_to profiles_url
          else
      render 'edit'
    end
  end

  def destroy
    @profile = Profile.find_by_id(params[:id])
    @profile.destroy
        redirect_to profiles_url
      end
end
