require 'rails_helper'

describe "Users can crud statuses" do

  before :each do
    visit "/"
    click_on "New Status"
    fill_in "Message", with: "Fuck This"
    fill_in "User", with: "Nick"
    click_on "Create Status"
  end

  it 'can create a status' do
    expect(page).to have_content("Fuck This")
  end

  it 'can select message' do
  expect(page).to have_content("Nick")
  end

  it "Can delete message" do
        click_on "Fuck This"
        click_on "Delete"
        expect(page).to have_content("Status successfully deleted.
")
      end
end
