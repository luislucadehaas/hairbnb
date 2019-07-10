class WigsController < ApplicationController

  def new
    @wig = Wig.new
  end

  def show
    @wig = Wig.find(params[:id])
    @booking = Booking.new
  end

  def create
    @wig = Wig.new(wig_params)
    @wig.user = current_user
    if @wig.save
      redirect_to wig_path(@wig)
    else
      render 'new'
    end
  end

  private

  def wig_params
    params.require(:wig).permit(:title, :photo, :description, :price, :color, :size, :photo_cache)
  end
end
