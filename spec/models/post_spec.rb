require 'spec_helper'

describe Post do
  it { should validate_presence_of :title }
  it { should validate_presence_of :link }
  it { should have_many :votes }
  it { should have_many :comments }


  it 'count all votes' do
    post = FactoryGirl.create :post
    vote_test1 = Vote.create({:post_id => post.id, :score => true})
    vote_test2 = Vote.create({:post_id => post.id, :score => false})
    vote_test3 = Vote.create({:post_id => post.id, :score => true})
    post.vote_count.should eq 1
  end
end


