require 'rails_helper'

feature "best buy search" do
  scenario "visitor searches on index" do
      visit '/'
save_and_open_page
      fill_in "query", with: "sennheiser"
      click_button "Search"

      expect(path).to eq(search_path)
      expect(page).to have_selector('li', count: 15)
      all("li").each do |li|
        expect(page).to have_content("SKU")
        expect(page).to have_content("Name")
        expect(page).to have_content("Customer Average Review")
        expect(page).to have_content("Short Description")
        expect(page).to have_content("Sale Price")
        expect(page).to have_content("Image")
    end
  end

end
