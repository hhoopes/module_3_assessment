require 'rails_helper'

RSpec.describe "Items API #index" do
  it "returns all the items and info except created at and updated at" do

    get "/api/v1/items"

    json = JSON.parse(response.body)

    expect(response).to be(success)

    expect(response["items"].count).to eq(100)


  end
end
