require 'rails_helper'

RSpec.describe "Items API #index" do
  it "returns all the items and info except created at and updated at" do
    100.times do
      Item.create
    end

    get "/api/v1/items"

    json = JSON.parse(response.body)

    # expect(response).to eq(success)

    expect(json["items"].count).to eq(100)
    item = json["items"].first

    expect(item["id"]).to eq(Item.first.id)
    expect(item["description"]).to eq(Item.first.description)
    expect(item["image_url"]).to eq(Item.first.image_url)
    expect(item["created_at"]).to be_nil
    expect(item["updated_at"]).to be_nil

  end
end
