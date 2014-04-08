class VotesController < ApplicationController
  def create
    @vote = Vote.create(user_params)
    @post = Post.find(user_params[:post_id])
    @post.update(:total_votes => @post.vote_count)
    redirect_to posts_path
  end

  private
  def user_params
    params.require(:vote).permit(:post_id, :score)
  end
end
