class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @wig = Wig.find(params[:wig_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.wig = @wig
    if @booking.save
      redirect_to dashboard_path
    else
      render @wig
    end
  end
  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :message, :photo)
  end

end
