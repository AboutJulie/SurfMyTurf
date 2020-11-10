class SurfboardsController < ApplicationController
  def index
   @surfboards = Surfboard.all
   @filtered_surfboards = surfboards.where(:availability == true, :location => params[:location] )

  end

  def show
  end

  def create
  end

  def update
  end

  def new
  end

  def edit
  end
end
