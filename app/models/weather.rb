class Weather
  attr_reader :summary,
              :icon,
              :precip,
              :high,
              :low

  def initialize(attributes = {})
    @summary = attributes[:summary]
    @icon    = attributes[:icon]
    @precip  = attributes[:precipProbability]
    @high    = attributes[:temperatureHigh]
    @low     = attributes[:temperatureLow]
  end
end