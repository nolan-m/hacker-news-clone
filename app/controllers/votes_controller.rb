class VotesController < ApplicationController
  def create
    @vote = Vote.create(user_params)
    redirect_to posts_path
  end

  private
  def user_params
    params.require(:vote).permit(:post_id, :score)
  end
end
