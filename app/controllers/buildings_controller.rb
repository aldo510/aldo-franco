class BuildingsController < ApplicationController

  def index
  end

  def show
    @building = Building.find(params[:id])
    @similar = Building.where(kind: @building.kind).sample(3)
  end

end
