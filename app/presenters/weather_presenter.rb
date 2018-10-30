class WeatherPresenter
  def initialize(lat, lng, date)
    @service = DarkSkyService.new(lat, lng, date)
  end

  def weather
    Weather.new(service.get_weather)
  end

  private
  attr_reader :service
end
