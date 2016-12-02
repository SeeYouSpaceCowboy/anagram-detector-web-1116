require "pry"

class Anagram
  attr_accessor :anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(words)

    words = words.select do |word|
      sort_letters(anagram) == sort_letters(word)
    end
  end

  def sort_letters(word)
    word.split("").sort.join
  end
end
