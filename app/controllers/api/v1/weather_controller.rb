class Api::V1::WeatherController < ApplicationController
  def index
    lat = params[:lat]
    long = params[:lng]
    date = params[:date]

    presenter = WeatherPresenter.new(lat, long, date)

    render json: presenter.weather
  end
end
