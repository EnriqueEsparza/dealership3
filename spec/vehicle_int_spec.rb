require("capybara/rspec")
require("./app")
require("launchy")
require("pry")
Capybara.app = Sinatra::Application



describe("path to index", {:type => :feature}) do
  it("shows the link to the list of cars and an add car form.") do
    visit("/")
    expect(page).to have_content("Welcome to")
  end
end
#
# describe("path to add vehicles", {:type => :feature}) do
#   it("allows user to enter a vehicle") do
#     Vehicle.clear()
#     visit("/vehicles/new")
#     fill_in("make", :with => "Datsun")
#     fill_in("model", :with => "510")
#     fill_in("year", :with => "1970")
#     click_button("Add Vehicle")
#     expect(page).to have_content("Success")
#   end
# end
#
# describe("path to view vehicles", {:type => :feature}) do
#   it("shows the list of vehicles.") do
#     Vehicle.clear()
#     test_vehicle = Vehicle.new("Tesla", "Tesla", "2015").save
#     visit("/vehicles")
#     expect(page).to have_content("Tesla")
#   end
# end
