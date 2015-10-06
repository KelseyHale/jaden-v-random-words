class Verb < ActiveRecord::Base
  validates :word, presence: true
end
