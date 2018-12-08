class CommentsController < ApplicationController
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @comment = @toilet.comments.create(comment_params)

    redirect_to toilet_path(@toilet)
  end

  private def comment_params
    params.require(:comment).permit(:username, :body)
  end
end
