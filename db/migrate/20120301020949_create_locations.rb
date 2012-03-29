# place = OrdrIn::Address.new(address.street, address.city, address.zip, address.street2, address,state, address.phone, address.nick)

class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.column :street, :string
      t.column :city, :string
      t.column :zip, :string
      t.column :street2, :string
      t.column :state, :string
      t.column :phone, :string
      t.column :nick, :string
    end
  end
end
