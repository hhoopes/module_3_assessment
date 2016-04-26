require 'rails_helper'

RSpec.describe "Items API #index" do
  it "returns all the items and info except created at and updated at" do
    100.times do
      Item.create
    end

    item = Item.last

    delete "/api/v1/items/#{item.id}"

    expect(response).to be_success
    expect(response.status).to eq(204)

    expect(Item.count).to eq(99)
  end
end
