class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :link, presence: true
  has_many :votes
  has_many :comments


  def vote_count
    total_votes = Vote.where(:post_id => self.id)
    count = 0
    total_votes.each do |vote|
      if vote.score == true
        count += 1
      else
        count -= 1
      end
    end
    count
  end

end
