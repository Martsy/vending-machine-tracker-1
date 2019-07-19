require 'rails_helper'

RSpec.describe "When a user visits the vending machine show", type: :feature do
  scenario "they see a list of snacks in vending machine" do
    sam = Owner.create(name: "Sam's Snacks")
    sam.machines.create(location: "Don's Mixed Drinks")
    sam.machines.create(location: "Turing Basement")

    snack1 = Snack.create!(type: 'Twizzlers')
    snack2 = Snack.create!(type: 'Starbursts')

    visit '/snacks'

    expect(page).to have_content("Don's Mixed Drinks")
    expect(page).to have_content("Turing Basement")
  end
end
