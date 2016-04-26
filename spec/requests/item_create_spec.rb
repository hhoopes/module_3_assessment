require 'rails_helper'

RSpec.describe "Items API #index" do
  it "returns all the items and info except created at and updated at" do
    10.times do
      Item.create
    end

    new_params = {item: {
                name: "This thing",
                description: "is awesome",
                image_url: "http://images.here"
    }}

    post "/api/v1/items", new_params
    json = JSON.parse(response.body)["item"]

    expect(Item.count).to eq(11)
    expect(response).to be_success

    # expect(json["name"]).to eq(new_params[:item][:name])
    expect(json["description"]).to eq(new_params[:item][:description])
    expect(json["image_url"]).to eq(new_params[:item][:image_url])
  end
end
