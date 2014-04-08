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

  it 'ranks post by most popular and ranks' do
    post = FactoryGirl.create :post
    vote_test1 = Vote.create({:post_id => post.id, :score => true})
    vote_test2 = Vote.create({:post_id => post.id, :score => false})
    vote_test3 = Vote.create({:post_id => post.id, :score => true})
    post2 = FactoryGirl.create :post
    vote_test4 = Vote.create({:post_id => post2.id, :score => true})
    vote_test5 = Vote.create({:post_id => post2.id, :score => true})
    vote_test6 = Vote.create({:post_id => post2.id, :score => true})
    Post.ranking.should eq [post2, post]
  end
end


