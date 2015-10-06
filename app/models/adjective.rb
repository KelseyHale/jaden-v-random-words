class Adjective < ActiveRecord::Base
  validates :word, presence: true
end
