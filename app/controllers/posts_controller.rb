class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(user_params)
    if @post.save
      flash[:notice] = "Post created."
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(user_params)
      flash[:notice] = "Post updated"
      redirect_to post_comments_path(@post)
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post deleted"
    redirect_to posts_path
  end

private
  def user_params
    params.require(:post).permit(:title, :link, :content, :total_votes)
  end

end
