class Weather
  attr_reader :summary,
              :precip,
              :high,
              :low

  def initialize(attributes = {})
    @summary       = attributes[:summary]
    @precip       = attributes[:precipProbability]
    @high      = attributes[:temperatureHigh]
    @low   = attributes[:temperatureLow]

  end
end