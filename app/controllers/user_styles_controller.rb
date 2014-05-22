class UserStylesController < ApplicationController

  def home
    render 'new'
  end

  def index
    @user_styles = UserStyle.all
  end

  def show
    @user_style = UserStyle.find(params[:id])
  end

  def new
    @user_style = UserStyle.new
  end

  def create
    @user_style = UserStyle.new
    @user_style.image_URL = params[:image_URL]
    @user_style.name = params[:name]

    if @user_style.save
      redirect_to "/user_styles", :notice => "User style created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_style = UserStyle.find(params[:id])
  end

  def update
    @user_style = UserStyle.find(params[:id])

    @user_style.image_URL = params[:image_URL]
    @user_style.name = params[:name]

    if @user_style.save
      redirect_to "/user_styles", :notice => "User style updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_style = UserStyle.find(params[:id])

    @user_style.destroy

    redirect_to "/user_styles", :notice => "User style deleted."
  end
end
