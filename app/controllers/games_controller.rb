class GamesController < ApplicationController
  require "open-uri"

  def new
    @letters = Array.new(10) { ("a".."z").to_a.sample }
  end
  def score
    @letters = params[:letters].split
    @word = params[:word]

    url = "https://dictionary.lewagon.com/#{@word}"
    word_serialized = URI.parse(url).read
    result = JSON.parse(word_serialized)
    @english_word = result["found"]
    @in_grind = @word.chars.all? { |char| @letters.include?(char) }
    if !@in_grind
    elsif !@in_grind
    else
    end
  end
end
