class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
  end

  def destroy
  end
  
  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, manual_id: params[:manual_id])
  end
end