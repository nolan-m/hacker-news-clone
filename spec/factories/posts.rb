# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title 'Test Title'
    link 'http://google.com'
    content 'Test Test test'
  end
end
