class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.valid?
      redirect_to blog_path
    else
      @comments = Comment.all
      render 'portfoliosites/blog', status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :poster_name)
  end
end
