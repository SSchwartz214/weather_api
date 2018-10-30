require 'rails_helper'

describe DarkSkyService do
  it 'exists' do
    service = DarkSkyService.new('42.3601', '-71.0589', '2019-04-02T01:30:00Z')

    expect(service).to be_a(DarkSkyService)
  end

  describe "instance methods" do
    it "finds the weather for a location" do
      latitude = '42.3601'
      longitude = '-71.0589'
      time = '2019-04-02T01:30:00Z'

      service = DarkSkyService.new(latitude, longitude, time)
      raw_weather= service.get_weather

      expect(raw_weather).to be_a(Hash)
      expect(raw_weather).to have_key(:summary)
      expect(raw_weather[:summary]).to be_a(String)
      expect(raw_weather).to have_key(:precipProbability)
      expect(raw_weather[:precipProbability]).to be_a(Float)
      expect(raw_weather).to have_key(:temperatureHigh)
      expect(raw_weather[:temperatureHigh]).to be_a(Float)
      expect(raw_weather).to have_key(:temperatureLow)
      expect(raw_weather[:temperatureLow]).to be_a(Float)
    end
  end 
end
