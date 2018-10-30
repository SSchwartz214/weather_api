class DarkSkyService
  def initialize(lat, lng, date)
    @lat = lat
    @lng = lng
    @date = date
  end

  def get_weather
    get_json("/forecast/#{ENV['dark_sky_key']}/#{lat},#{lng},#{date}")[:daily][:data][0]
  end

  private
  attr_reader :lat, :lng, :date

  def conn
    Faraday.new(url: "https://api.darksky.net") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
