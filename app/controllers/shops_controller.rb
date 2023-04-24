class ShopsController < ApplicationController
  before_action :set_client, only: %i[create]

  def search
  end

  def show
  end

  private

  def set_client
    @client ||= GooglePlaces::Client.new(ENV["GOOGLE_API_KEY"])
  end
end
