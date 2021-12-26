class ImagesController < ApplicationController
  def new
    if logged_in?
    @image = Image.new
    else
      flash[:notice] = "You must login before uploading an image"

      redirect_to login_path

    end

  end

  def create
    if logged_in?
    @image = Image.new(image_params)
    if @image.save
      flash[:notice] = "Image Created"

      redirect_to root_path
    else
      render 'new'
    end 
    else
      redirect_to login_path
    end

    
  end 


  def destroy
    if logged_in?
    @image = Image.find(params[:id])
    @image.destroy

    flash[:notice] = "Image Deleted"

    redirect_to images_path
    else
      flash[:notice] = "You must login before uploading an image"

      redirect_to login_path
    end 

  end

  def index
    @images = Image.all
    @categories = Category.all
  end

private
  def image_params
         params.require(:image).permit(:image, :category_id, :image_title, :image_description, :image_file_size, :image_content_type, :remote_image_url)
      end
    
end
