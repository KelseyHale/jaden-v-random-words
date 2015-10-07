class Adjective < ActiveRecord::Base
  validates :word, presence: true

  def self.random
    self.all.sample.word.capitalize
  end
end
