require 'spec_helper'

describe Post do
  it 'can be created by an user' do
    visit posts_path
    click_link 'New Post'
    fill_in 'Title', :with => 'Test title'
    fill_in 'Link URL', :with => 'TEST URL'
    fill_in 'Post Content', :with => 'TEST CONTENT CONTENT'
    click_button 'Create Post'
    page.should have_content 'Test title'
  end
  it 'can be edited by a user' do
    post = FactoryGirl.create :post
    visit post_comments_path(post)
    click_link 'Edit Post'
    fill_in 'Title', :with => 'New title'
    click_button 'Update Post'
    page.should have_content 'New title'
  end
  it 'can be deleted by a user' do
    post = FactoryGirl.create :post
    visit post_comments_path(post)
    click_link 'Delete'
    page.should_not have_content post.title
  end
  it 'should display errors if you leave title or url blank' do
    visit posts_path
    click_link 'New Post'
    click_button 'Create Post'
    page.should have_content 'Please fix these errors:'
  end

  it 'displays comments and post content when clicking on comments' do
    post = FactoryGirl.create :post
    visit posts_path
    click_link "Comments (#{post.comments.length})"
    page.should have_content post.title
  end
end

