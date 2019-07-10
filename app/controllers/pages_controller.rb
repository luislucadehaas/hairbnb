class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @wigs = Wig.first(4)
  end

  def dashboard
    @bookings = current_user.bookings

  end

  def wig_params
    params.require(:wig).permit(:title, :photo, :description, :price, :color, :size, :photo_cache)
  end
end
