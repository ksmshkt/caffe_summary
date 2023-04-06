class ToppagesController < ApplicationController
  before_action :set_client, only: %i[create]

  def index
  end

  def create
    @data =
      @client.spots(
        params[:latitude],
        params[:longitude],
        language: "ja",
        types: "cafe",
      )
    @places = []
    @data.each { |place| @places << place.name }
    redirect_to toppages_path(places: @places)
  end

  private

  def set_client
    @client ||= GooglePlaces::Client.new(ENV["GOOGLE_API_KEY"])
  end
end
