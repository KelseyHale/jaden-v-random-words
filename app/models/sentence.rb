class Sentence
  def self.random_sentence
    @noun = Noun.all
    @verb = Verb.all
    @adjective = Adjective.all
    @preposition = Preposition.all
    @other = Other.all

    ["#{@other.random} #{@noun.random} #{@preposition.random} #{@verb.random}.", "The #{@adjective.random} #{@noun.random} #{@verb.random} and #{@verb.random}.", "#{@noun.random}s #{@verb.random} but #{@adjective.random} #{@adjective.random} #{@noun.random} #{@verb.random}s."].sample
  end

  def self.random_paragraph
    number_of_sentences = [1, 2, 3].sample
    paragraph = []
    number_of_sentences.times do
      paragraph << random_sentence
    end
    paragraph.join(" ")
  end

  def self.tweet_or_random
    if rand(2) == 0
      { sentence: Tweet.all.sample.tweet, real: true }
    else
      { sentence: random_paragraph, real: false }
    end
  end
end
