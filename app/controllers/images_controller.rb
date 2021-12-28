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
      user_id = "hello"
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
    @image = Image.find(params[:id])

    userid = @image.user_id
    if userid == current_user.username

        if logged_in?
        @image.destroy

        flash[:notice] = "Image Deleted"

        redirect_to images_path
        else
          flash[:notice] = "You must login before uploading an image"

          redirect_to login_path
        end 
     else 
        flash[:notice] = "You can only delete images you uploaded"
        redirect_to root_path

      end 

  end

  def index
    if logged_in?
    @images = Image.all.where(user_id: current_user.username)
    @categories = Category.all
    else 
    @images = Image.all
    @categories = Category.all

    end


  end

private
  def image_params
         params.require(:image).permit(:image, :category_id, :image_title, :image_description, :image_file_size, :image_content_type, :remote_image_url, :user_id)
      end
    
end
