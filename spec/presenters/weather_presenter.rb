require 'rails_helper'

describe WeatherPresenter do
  it 'exists' do
    presenter = WeatherPresenter.new('42.3601', '-71.0589', '2019-04-02T01:30:00Z')

    expect(presenter).to be_a(WeatherPresenter)
  end

  describe "instance methods" do
    it "finds the weather for a location" do
      latitude = '42.3601'
      longitude = '-71.0589'
      time = '2019-04-02T01:30:00Z'

      presenter = WeatherPresenter.new(latitude, longitude, time)

      expect(presenter.weather).to be_a(Weather)
      expect(presenter.weather.summary).to be_a(String)
      expect(presenter.weather.precip).to be_a(Float)
      expect(presenter.weather.high).to be_a(Float)
      expect(presenter.weather.low).to be_a(Float)
    end
  end 
end
