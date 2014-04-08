require 'spec_helper'

describe Comment do
    it 'lets a user add a comment to a post' do
      post = FactoryGirl.create :post
      visit posts_path
      click_link "Comments (#{post.comments.length})"
      fill_in 'Comment', :with => "Dude seriously"
      click_button 'Create Comment'
      page.should have_content 'Dude seriously'

    end
  end
