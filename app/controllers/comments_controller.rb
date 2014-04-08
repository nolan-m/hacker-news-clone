class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(user_params)
    if @comment.save
      flash[:notice] = "Comment created."
      redirect_to comments_path
    else
      render 'new'
    end
  end

  def show
    @comment = Comment.find(params[:id])
    redirect_to comment_path(@comment)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(user_params)
      flash[:notice] = "Comment updated"
      redirect_to comment_path(@comment)
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment deleted"
    redirect_to comments_path
  end

private
  def user_params
    params.require(:comment).permit(:post_id, :content)
  end

end
