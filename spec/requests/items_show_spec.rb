require 'rails_helper'
require 'rails_helper'

RSpec.describe "Items API #show" do
  it "returns one item and info except created at and updated at" do
    10.times do
      Item.create
    end
    item = Item.first

    get "/api/v1/items/#{item.id}"

    json = JSON.parse(response.body)

    expect(response).to be_success
    received = json["item"]

    expect(received["id"]).to eq(item.id)
    expect(received["description"]).to eq(item.description)
    expect(received["image_url"]).to eq(item.image_url)
  end
end
