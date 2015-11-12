require 'rails_helper'

describe Api::V1::SentencesController do
  describe 'GET #show' do
    let(:tweet) { FactoryGirl.create(:tweet).tweet }
    let!(:tweet_hash) { {sentence: tweet, real: true} }

    before do
      allow(Sentence).to receive(:tweet_or_random).and_return(tweet_hash)
      get :show, format: :json
    end

    it "should return a status of 200" do
      expect(response.status).to eq 200
    end

    it "should return a json object with a sentence and real attributes" do
      json = JSON.parse(response.body)
      expect(json['sentence']).to eq(tweet_hash[:sentence])
      expect(json['real']).to eq(tweet_hash[:real])
    end
  end
end
