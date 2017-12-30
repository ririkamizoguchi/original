class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.create(post_params)
    @post = current_user.posts.last
  end

  def new
  end

  def edit
    @post = Post.find(params[:id])
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

 private

def post_params
  params.require(:post).permit(:text).merge(user_id: current_user.id)
end



end
