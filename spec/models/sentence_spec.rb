require 'rails_helper'

describe Sentence do
  before do
    FactoryGirl.create_list(:adjective, 5)
    FactoryGirl.create_list(:noun, 5)
    FactoryGirl.create_list(:verb, 5)
    FactoryGirl.create_list(:preposition, 5)
    FactoryGirl.create_list(:other, 5)
  end
  describe ".random_sentence" do

    it "should be a string" do
      expect(Sentence.random_sentence).to be_a(String)
    end

    it "should be a random string" do
      string_1 = Sentence.random_sentence
      string_2 = Sentence.random_sentence
      expect(string_1).to_not eq(string_2)
    end
  end

  describe ".random_paragraph" do
    it "should be a string" do
      expect(Sentence.random_paragraph).to be_a(String)
    end

    it "should generate a paragraph of varying length" do
      count_array = []
      10.times do
        count_array << Sentence.random_paragraph.split(".").count
      end
      expect(count_array).to include(1, 2, 3)
    end
  end

  describe ".tweet_or_random" do
    let!(:tweet) { FactoryGirl.create(:tweet).tweet }
    let!(:tweet_hash) { {sentence: tweet, real: true} }
    let!(:random_sentence) { "meow" }
    let!(:random_hash) { {sentence: random_sentence, real: false} }
    it "should generate a tweet or random paragraph" do
      allow(Sentence).to receive(:random_paragraph).and_return(random_sentence)
      responses = []
      10.times do
        responses << Sentence.tweet_or_random
      end
      expect(responses).to include(tweet_hash, random_hash)
    end
  end
end
