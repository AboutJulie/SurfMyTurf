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
    @surfboard = Surfboard.new
    @user = current_user
  end

  def create
    @surfboard = Surfboard.new(surfboard_params)
    @surfboard.user = current_user

    if @surfboard.save
      redirect_to surfboard_path(@surfboard), notice: "Your board has been added!"
    else
      render :new
    end
  end

  def update
    @surfboard = Surfboard.find(params[:id])
    @surfboard.update(surfboard_params)

    redirect_to surfboard_path(@surfboard)
  end

  def edit
    @surfboard = Surfboard.find(params[:id])
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:name, :photo, :category, :description, :location, :price) #, :availability
  end
end
