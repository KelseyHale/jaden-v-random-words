require 'factory_girl'

FactoryGirl.define do
  factory :adjective do
    sequence(:word) { |n| "#{n}cool"}
  end
  factory :noun do
    sequence(:word) { |n| "#{n}pineapple"}
  end
  factory :other do
    sequence(:word) { |n| "#{n}and"}
  end
  factory :preposition do
    sequence(:word) { |n| "#{n}Henceforth"}
  end
  factory :tweet do
    sequence(:tweet) { |n| "#{n}awesome_tweet"}
  end
  factory :verb do
    sequence(:word) { |n| "#{n}ballin'"}
  end

end
