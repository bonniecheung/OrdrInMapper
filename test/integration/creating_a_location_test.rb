require 'test_helper'

class CreatingALocationTest < ActionDispatch::IntegrationTest

  test "Create a new location" do
    visit root_url
    click_link "New location"
    assert_equal new_location_path, current_path
    fill_in :street, with: '1 Main Street'
    fill_in :city, with: 'College Station'
    fill_in :zip, with: '77840'
    fill_in :street2, with: 'Suite 200'
    fill_in :state, with: 'TX'
    fill_in :phone, with: '4044099661'
    fill_in :nick, with: 'Home'
    click_button "Create Location"
#   assert_equal Location.last.street, '1 Main Street'
#   assert_equal location_path(Location.last), current_path
  end

end
