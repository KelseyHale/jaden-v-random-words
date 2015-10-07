class HomesController < ApplicationController
  def index
    # can i move this to a sentencesController and partial out the tweets
    # and partial out the random words
    @noun = Noun.all
    @verb = Verb.all
    @adjective = Adjective.all
    @preposition = Preposition.all
    @other = Other.all
    @tweet = Tweet.all.sample

    @sentences = [" #{@other.random} #{@noun.random} #{@preposition.random} #{@verb.random}.", "The #{@adjective.random} #{@noun.random} #{@verb.random} and #{@verb.random}.", "#{@noun.random}s #{@verb.random} but #{@adjective.random} #{@adjective.random} #{@noun.random} #{@verb.random}s.", ""]
    @sentence1 = @sentences.sample
    @sentence2 = @sentences.sample
    @sentence3 = @sentences.sample
  end
end
