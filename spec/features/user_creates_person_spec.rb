require "rails_helper"

feature "user creates person" do
  scenario "with valid data" do
    visit new_person_path
    fill_in "person_first_name", with: "Bob"
    click_button "Create Person"

    expect(page).to have_content("Person created")
  end
end

feature "user edits existing person" do
  scenario "with valid data" do
    pending "write your spec here"
  end
end
