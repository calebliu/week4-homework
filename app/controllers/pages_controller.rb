	require 'open-uri'

  class PagesController < ApplicationController

  def search
  end

  def conditions
  	@city = params[:city]
  	@url = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{@city}&units=imperial")
  	@json_data = open(@url).read
  	@data = JSON.parse(@json_data)
  	@main = @data["main"]
  	@temp = @main["temp"]

  
  end

  end
