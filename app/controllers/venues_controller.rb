class VenuesController < ApplicationController

  before_action :authenticate_user!, only: [ :edit, :update, :destroy ]

  before_action :set_venues, :set_venue

  def create
    self.venue = Venue.new(venue_params)

    respond_to do |format|
      if venue.save
        format.html { redirect_to venue, notice: 'Venue was successfully created.' }
        format.json { render :show, status: :created, location: venue }
      else
        format.html { render :new }
        format.json { render json: venue.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if venue.update(venue_params)
        format.html { redirect_to venue, notice: 'Venue was successfully updated.' }
        format.json { render :show, status: :ok, location: venue }
      else
        format.html { render :edit }
        format.json { render json: venue.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    venue.destroy
    respond_to do |format|
      format.html { redirect_to venues_url, notice: 'Venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  protected

  def set_venues
    @venues = Venue.order('name ASC')
  end

  def set_venue
    unless params[:id].nil?
      @venue = Venue.find(params[:id])
    else
      @venue = Venue.new
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :city, :title, :description, :url, :street_address, :locality, :duplicate_of_id, :region, :postal_code, :country, :latitude, :longitude, :email, :telephone, :closed, :wifi, :access_notes, :source_id)
  end

end
