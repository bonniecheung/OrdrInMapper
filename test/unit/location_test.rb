require 'test_helper'

class LocationTest < ActiveSupport::TestCase

  should validate_presence_of(:street)
  should validate_presence_of(:city)
  should validate_presence_of(:zip)
  should validate_presence_of(:street2)
  should validate_presence_of(:state)
  should validate_presence_of(:phone)
  should validate_presence_of(:nick)
  should validate_numericality_of(:phone)
  should validate_numericality_of(:zip)
  should ensure_length_of(:state)
  should ensure_length_of(:zip)
  should ensure_length_of(:phone)

  test "valid with all attributes" do
    l = FactoryGirl.build(:location)
    assert l.valid?, "Location was not valid"
  end

end
