class CommentsController < ApplicationController

  def create
     @comment = @commentable.comments.new comment_params
     @comment.save
     redirect_to @commentable, notice: "Your comment was successfull posted"
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
