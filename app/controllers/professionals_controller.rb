class ProfessionalsController < ApplicationController

  def index
    @professionals = Professional.all
  end

  def show
    @professional = Professional.find_by_id(params[:id])
  end

  def new
    @professional = Professional.new
  end

  def create
    @professional = Professional.new
    @professional.architect_company = params[:architect_company]
    @professional.photographer = params[:photographer]
    
    if @professional.save
            redirect_to professionals_url
          else
      render 'new'
    end
  end

  def edit
    @professional = Professional.find_by_id(params[:id])
  end

  def update
    @professional = Professional.find_by_id(params[:id])
    @professional.architect_company = params[:architect_company]
    @professional.photographer = params[:photographer]
    
    if @professional.save
            redirect_to professionals_url
          else
      render 'edit'
    end
  end

  def destroy
    @professional = Professional.find_by_id(params[:id])
    @professional.destroy
        redirect_to professionals_url
      end
end
