class Noun < ActiveRecord::Base
  validates :word, presence: true
end
