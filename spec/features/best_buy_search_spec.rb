require 'rails_helper'

Feature.describe "best buy search" do
  scenario "visitor searches on index" do
    it "returns 15 results and their info"  do
      visit '/'

      fill "search", with: "sennheiser"
      click "submit"

      expect(path).to eq(search_path)
      expect(page).to have_selector('li', count: 15)
      all("li").each do |li|
        expect(page).to have_content("SKU")
      end
    end
  end

end
