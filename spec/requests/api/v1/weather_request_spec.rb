require 'rails_helper'

describe "Weather API" do
  it "sends weather info" do

    get "/api/v1/weather?lat=42.3601&lng=-71.0589&date=2019-04-02T01:30:00Z"


    expect(response).to be_successful

    weather = JSON.parse(response.body, symbolize_names: true)
    
    expect(weather).to have_key(:summary)
    expect(weather[:summary]).to be_a(String)
    expect(weather).to have_key(:precip)
    expect(weather[:precip]).to be_an(Float)
    expect(weather).to have_key(:high)
    expect(weather[:high]).to be_an(Float)
    expect(weather).to have_key(:low)
    expect(weather[:low]).to be_an(Float)
  end
end
