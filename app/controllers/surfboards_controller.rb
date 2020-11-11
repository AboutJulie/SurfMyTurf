class SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all
    if params["surfboard"]["location"].empty?
     @filtered_surfboards = @surfboards.where(availability: true)
    else
     @filtered_surfboards = @surfboards.where(availability: true, location: params["surfboard"]["location"])
     end
  end

  def show
    @surfboard = Surfboard.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end
end
