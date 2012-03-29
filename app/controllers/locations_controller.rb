class LocationsController < ApplicationController

  respond_to :html, :json

  before_filter :find_location, :only => [:show, :edit, :update, :destroy]

  def index
    respond_with(@locations = Location.all)
  end

  def show
    begin
      restaurant = Restaurant.new(@location)
      @list = restaurant.find_nearby_restaurants
      gon.names = restaurant.get_names(@list)
      gon.addresses = restaurant.get_addresses(@list)
    rescue Exception => e
      flash[:error] = "Sorry, something went wrong: #{e.inspect}"
      redirect_to :index
    end
  end

  def new
    respond_with(@location = Location.new)
  end

  def edit
  end

  def create
    @location = Location.new(params[:location])
    @location.save
    respond_with(@location)
  end

  def update
    @location.update_attributes(params[:location])
    respond_with(@location)
  end

  def destroy
    @location.destroy
    respond_with(@location)
  end

  private 
  def find_location
    @location = Location.find_by_id(params[:id])
    unless @location
      flash[:error] = "Sorry, that location is no longer available"
      redirect_to :index
    end
  end

end
