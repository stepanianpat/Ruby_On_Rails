require 'rails_helper'
feature "guest user creates an account" do
  scenario "successfully creates a new user account" do
    visit new_user_path
    fill_in "user_first_name", with: "Isaac"
    fill_in "user_last_name", with: "La"
    fill_in "user_email", with: "isaac@dojo.com"
    click_button "Create User"
    expect(page).to have_content "User successfully created"
  end
end
