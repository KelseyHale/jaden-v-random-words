class Api::V1::SentencesController < Api::V1::ApiController

  def show
    @sentence = Sentence.tweet_or_random
    respond_to do |format|
      format.json { render json: @sentence  }
    end
  end
end
