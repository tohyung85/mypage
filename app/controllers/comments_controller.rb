class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to blog_path
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :poster_name)
  end
end
