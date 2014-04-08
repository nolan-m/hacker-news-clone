require 'spec_helper'

describe Post do
  it { should validate_presence_of :title }
  it { should validate_presence_of :link }
  it { should have_many :votes }
  it { should have_many :comments }
end
