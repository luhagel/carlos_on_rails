class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @subreddit = Subreddit.find(@post.subreddit_id)
    @comment = Comment.new(comment_params)
    @comment.post = @post

    if @comment.content.length == 0 
      redirect_to [@subreddit, @post]
      return
    end

    if @comment.save
      redirect_to [@subreddit, @post]
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
