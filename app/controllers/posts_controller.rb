class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
  end

  def update
  end

  def destroy
  end

  def search
    @posts = Post.where('text LIKE ?', "%#{params[:keyword]}%")
  end



end
