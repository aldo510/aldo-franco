class BuildingsController < ApplicationController

  def index
  	@all = Building.all
  	@build_hash = {'all': Building.all}
  	@build_hash.merge!(Building.all.group_by(&:kind))

  end

  def show
    @building = Building.find(params[:id])
    @similar = Building.where(kind: @building.kind).sample(3)
    @all = Building.all
  end

end
