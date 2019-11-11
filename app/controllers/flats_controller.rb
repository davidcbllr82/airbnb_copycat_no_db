require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]

  def index;end

  def show
    @flat = @flats.find do |flat|
      flat["id"] == params[:id].to_i
    end
  end

  private

  def set_flats
    flats_serialized = open('https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json').read
    @flats = JSON.parse(flats_serialized)
  end
end
