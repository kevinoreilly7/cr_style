class RequirementsController < ApplicationController

  def index
    @requirements = Requirement.all
  end

  def show
    @requirement = Requirement.find_by_id(params[:id])
  end

  def new
    @requirement = Requirement.new
  end

  def create
    @requirement = Requirement.new
    @requirement.sf = params[:sf]
    @requirement.location = params[:location]
    @requirement.price = params[:price]
    
    if @requirement.save
            redirect_to requirements_url
          else
      render 'new'
    end
  end

  def edit
    @requirement = Requirement.find_by_id(params[:id])
  end

  def update
    @requirement = Requirement.find_by_id(params[:id])
    @requirement.sf = params[:sf]
    @requirement.location = params[:location]
    @requirement.price = params[:price]
    
    if @requirement.save
            redirect_to requirements_url
          else
      render 'edit'
    end
  end

  def destroy
    @requirement = Requirement.find_by_id(params[:id])
    @requirement.destroy
        redirect_to requirements_url
      end
end
