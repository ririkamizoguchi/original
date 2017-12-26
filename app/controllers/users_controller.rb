class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  def update
   @user = User.find(params[:id])
   if @user.update(user_params)
     redirect_to user_show_path(@user)
    else
      render :edit
    end
  end

  def destroy
  end
  def user_params
    params.require(:user).permit(:name, :gender, :birthday, :hometown :image)
  end
end
