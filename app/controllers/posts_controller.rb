class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_url
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.new
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :content, :user)
  end

end
