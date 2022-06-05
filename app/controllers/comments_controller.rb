class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update]

  def create
    comment = Comment.create(comment_params)
    redirect_to "/manuals/#{comment.manual.id}"
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to "/manuals/#{comment.manual.id}"
    else
      render action: :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to "/manuals/#{comment.manual.id}"
    end
  end
  
  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, manual_id: params[:manual_id])
  end

  def set_comment
    @manual = Manual.find(params[:manual_id])
    @comment = Comment.find(params[:id])
  end
end