class PagesController < ApplicationController
  skip_before_action :authenticate_user! , only: [:home]

  def home
    @wigs = Wig.first(4)
  end

  def dashboard_client
    @bookings = current_user.bookings
  end


  def dashboard_owner
    @wigs = current_user.wigs
    @bookings_as_owner = current_user.bookings_as_owner
  end

  def wig_params
    params.require(:wig).permit(:title, :photo, :description, :price, :color, :size, :photo_cache)
  end
end
