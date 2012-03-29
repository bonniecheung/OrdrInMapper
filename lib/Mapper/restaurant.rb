require 'rubygems'
require 'ordrin'
require 'ostruct'

class Restaurant

  def initialize(location)

    OrdrIn::API.new("PLaH-eI-4RGmXQKNu8bTaA", "https://r-test.ordr.in")
    @place = OrdrIn::Address.new(location.street, location.city, location.zip, location.street2, location.state, location.phone, location.nick)
    @date_time = OrdrIn::DT.new
    @date_time.asap = true
    @r = OrdrIn::Restaurant.new

  end

  def find_nearby_restaurants
    list = JSON.parse(@r.delivery_list(@date_time, @place))
  end

  def get_names(list)
    name_array = list.collect{|item| item["na"]}
  end

  def get_addresses(list)
    addr_array = list.collect{|item| item["ad"]}
  end

end
