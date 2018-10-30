class Api::V1::WeatherController < ApplicationController

  def index
    latitude = params[:lat]
    longitude = params[:lng]
    time = params[:date]

    conn = Faraday.new(url: "https://api.darksky.net") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  
    response = conn.get("/forecast/#{ENV["dark_sky_key"]}/42.3601,-71.0589,2019-04-02T01:30:00Z")
    results = JSON.parse(response.body, symbolize_names: true)[:daily][:data]
    
    weather = Weather.new(results[0])
  end

end