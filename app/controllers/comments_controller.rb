class CommentsController < ApplicationController
  def create
    @comment=Comment.create(comment_params)
    redirect_to "/posts/#{@comment.post.id}"
  end

  private
  def comment_params
    params.permit(:comments, :post_id).merge(user_id: current_user.id)
  end
end
