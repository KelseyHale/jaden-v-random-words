class Tweet < ActiveRecord::Base
  validates :tweet, presence: true
end
