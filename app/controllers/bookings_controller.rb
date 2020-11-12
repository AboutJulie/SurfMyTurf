class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @surfboard = Surfboard.find(params[:surfboard_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @surfboard = Surfboard.find(params[:surfboard_id])
    @booking.surfboard = @surfboard
    @booking.user = current_user

    if @booking.save
      redirect_to surfboard_path(@surfboard), notice: "Your booking was successful!"
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :surfboard_id)
  end
end
