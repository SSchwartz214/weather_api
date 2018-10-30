require 'rails_helper'

describe "Weather API" do
  it "sends weather info" do

    get "/api/v1/weather"


    expect(response).to be_successful

    weather = JSON.parse(response.body)
  end
end