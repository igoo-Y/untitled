class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.article_id = params[:article_id]
    comment.user_id = current_user.id
    comment.save

    redirect_back fallback_location: root_path
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.user_id == current_user.id
    comment.destroy
    end

    redirect_back fallback_location: root_path
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
