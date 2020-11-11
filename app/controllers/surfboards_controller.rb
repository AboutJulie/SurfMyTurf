class SurfboardsController < ApplicationController
  def index
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
      redirect_to surfboards_path, notice: "Your board has been added!"
    else
      render :new
    end
  end

  def update
    @surfboard = Surfboard.find(params[:id])
    @surfboard.update(surfboard_params)

    redirect_to surfboards_path(@restaurant)
  end

  def edit
    @surfboard = Surfboard.find(params[:id])
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:name, :description, :location, :price) #, :availability
  end
end
