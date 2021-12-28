class CategoriesController < ApplicationController
  def new
    if logged_in?
    @category = Category.new
    else 
      flash[:notice] = "You must login before creating a category"

      redirect_to login_path
    end
  end

  def create
    if logged_in?
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Category Created"

      redirect_to root_path
    else
      render 'new'
    end 
    else 
      flash[:notice] = "You must login before creating a category"

      redirect_to login_path
     
  end 

  end

  def edit
    @category = Category.find(params[:id])

    if logged_in?
      @images = @category.images.where(user_id: current_user.username)
      @categories = Category.all
      else 
        @images = @category.images
        @categories = Category.all
      end
  end

  def update
    if logged_in?

          @category = Category.find(params[:id])
          if  @category.update(category_params)
            flash[:notice] = "Category Updated"

            redirect_to category_path(params[:id])

          else
            render 'edit'
          end
    else 
      flash[:notice] = "You must login before editting a category"

      redirect_to login_path
    end 

    
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "Category Deleted"
    redirect_to root_path 


  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @images = @category.images
  end

  private 
    def category_params
      params.require(:category).permit(:name, :user_id)
    end
end
