class HomesController < ApplicationController
  def index
    # can i move this to a sentencesController and partial out the tweets
    # and partial out the random words
    @noun = Noun.all
    @verb = Verb.all
    @adjective = Adjective.all
    @preposition = Preposition.all
    @other = Other.all

    @sentences = [" #{@other.sample.word.capitalize} #{@noun.sample.word} #{@preposition.sample.word} #{@verb.sample.word}.", "The #{@adjective.sample.word} #{@noun.sample.word} #{@verb.sample.word} and #{@verb.sample.word}.", "#{@noun.sample.word.capitalize}s #{@verb.sample.word} but #{@adjective.sample.word} #{@adjective.sample.word} #{@noun.sample.word} #{@verb.sample.word}s.", ""]
    @sentence1 = @sentences.sample
    @sentence2 = @sentences.sample
    @sentence3 = @sentences.sample
  end
end
