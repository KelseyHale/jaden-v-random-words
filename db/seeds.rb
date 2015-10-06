require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Most_common_words_in_English"))
doc.css(".column").each do |column|
  words = column.content.split
  category = words.shift
  words.each do |word|
    if category == "Nouns"
      Noun.create(word: word)
    elsif category == "Verbs"
      Verb.create(word: word)
    elsif category == "Adjectives"
      Adjective.create(word: word)
    elsif category == "Prepositions"
      Preposition.create(word: word)
    else
      Other.create(word: word)
    end
  end
end
