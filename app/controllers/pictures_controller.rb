class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find_by_id(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new
    @picture.caption = params[:caption]
    @picture.add_pic = params[:add_pic]
    @picture.source = params[:source]
    
    if @picture.save
            redirect_to pictures_url
          else
      render 'new'
    end
  end

  def edit
    @picture = Picture.find_by_id(params[:id])
  end

  def update
    @picture = Picture.find_by_id(params[:id])
    @picture.caption = params[:caption]
    @picture.add_pic = params[:add_pic]
    @picture.source = params[:source]
    
    if @picture.save
            redirect_to pictures_url
          else
      render 'edit'
    end
  end

  def destroy
    @picture = Picture.find_by_id(params[:id])
    @picture.destroy
        redirect_to pictures_url
      end
end
