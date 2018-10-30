class Api::V1::WeatherController < ApplicationController

  def index
    latitude = params[:lat]
    longitude = params[:lng]
    time = params[:date]

    conn = Faraday.new(url: "https://api.darksky.net") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  
    response = conn.get("/forecast/#{ENV["dark_sky_key"]}/#{latitude},#{longitude},#{time}")
    results = JSON.parse(response.body, symbolize_names: true)[:daily][:data]
    
    weather = Weather.new(results[0])

    render json: weather
  end

end