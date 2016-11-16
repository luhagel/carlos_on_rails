class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @subreddit = Subreddit.find(params[:subreddit_id])
    @post = Post.new
  end

  def create
    @subreddit = Subreddit.find(params[:subreddit_id])
    @post = Post.new(post_params)
    @post.subreddit = @subreddit
    if @post.save
      redirect_to [@subreddit, @post]
    end
  end

  def show
    @post = Post.find(params[:id])
    @subreddit = Subreddit.find(@post.subreddit_id)
    @comment = @post.comments.new
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :content, :user, :subreddit_id)
  end

end
