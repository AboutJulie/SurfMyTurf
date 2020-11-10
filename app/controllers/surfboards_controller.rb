class SurfboardsController < ApplicationController
  def index
  end

  def show
  end

  def create
    raise
  end

  def update
  end

  def new
    @surfboard = Surfboard.new
    @user = current_user
  end

  def edit
  end
end
