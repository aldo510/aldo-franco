class BuildingsController < ApplicationController

  def index
  	@all = Building.all
  end

  def show
    @building = Building.find(params[:id])
    @similar = Building.where(kind: @building.kind).sample(3)
    @all = Building.all
  end

end
