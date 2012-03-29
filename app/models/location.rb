class Location < ActiveRecord::Base

  validates :street, :presence => true
  validates :city, :presence => true
  validates :zip, :presence => true
  validates_numericality_of :zip, :length => { :is => 5 }
  validates :street2, :presence => true
  validates :state, :presence => true, :length => { :is => 2 }
  validates_numericality_of :phone, :length => { :is => 10 }
  validates :phone, :presence => true
  validates :nick, :presence => true

end
