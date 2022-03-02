class BuildingsController < ApplicationController

  def index
  	@all = Building.all
    @build_hash = Kind.all_by_kinds
  end

  def show
    @building = Building.find(params[:id])
    @images_building = @building.images
    @similar = @building.similars.sample(3)
  	@build_hash = Kind.all_by_kinds
    # @all = Building.all
  end

end
