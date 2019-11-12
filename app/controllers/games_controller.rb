require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @final_array = []
    10.times do
      @letter = ('a'..'z').to_a.sample
      @final_array << @letter
    end
  end

  def score
    @final_input = params[:word]

    @url = "https://wagon-dictionary.herokuapp.com/#{@final_input}"
    @output = open(@url).read
    @api_output = JSON.parse(@output)
  end
end
