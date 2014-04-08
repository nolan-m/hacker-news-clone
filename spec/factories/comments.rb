# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    content 'Comment Content Test'
    association :post, :factory => :post
  end
end
