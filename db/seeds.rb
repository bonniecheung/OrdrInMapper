# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create(:street => "1 Main St", :city => "College Station", :zip => "77840", :street2 => "Suite 200", :state => "TX", :phone => "4044099661", :nick => "Home")
Location.create(:street => "3878 Maizeland Road", :city => "Colorado Springs", :zip => "80909", :street2 => "Suite 706", :state => "CO", :phone => "1111111111", :nick => "Office")
Location.create(:street => "350 Mission Street", :city => "San Francisco", :zip => "94105", :street2 => "Suite 706", :state => "CA", :phone => "2222222222", :nick => "Office")
