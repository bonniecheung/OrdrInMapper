require 'test_helper'

class LocationsTest < ActionDispatch::IntegrationTest

  test "Anyone can see location" do
    location = Factory(:location)
    get location_url(location)
    assert_response :success
    assert_select "h1", location.street 
  end

  test "Anyone can see location with Capybara" do
    location = Factory(:location)
    visit location_url(location)
    assert_equal location_path(location), current_path
  end

  test "Edit a location" do
    location = Factory(:location)
    visit location_url(location)
    click_link "Edit"
    fill_in :street, with: '1 Main Street'
    fill_in :city, with: 'College Station'
    fill_in :zip, with: '77840'
    fill_in :street2, with: 'Suite 200'
    fill_in :state, with: 'TX'
    fill_in :phone, with: '4044099661'
    fill_in :nick, with: 'Office'
    click_button "Update Location"
    assert_equal location_path(location), current_path
  end

end
