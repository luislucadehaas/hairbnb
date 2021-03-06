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
      redirect_to dashboard_client_path
    else
      render @wig
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save

   redirect_to dashboard_owner_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :message, :status)
  end

end
