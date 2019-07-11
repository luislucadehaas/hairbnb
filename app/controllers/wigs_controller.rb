class WigsController < ApplicationController

  def index

    if params[:search].present? && params["search"]["query"] == ""
      @wigs = Wig.all
    elsif params[:search].present?
      sql_query = " \
        wigs.title @@ :search \
        OR wigs.description @@ :search \
        OR wigs.color @@ :search \
      "
      @wigs = Wig.where(sql_query, search: "%#{params["search"]["query"]}%")
    else
      @wigs = Wig.all
    end
  end

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

  def edit
  end

  def update
  end

    def destroy
    @wig = Wig.find(params[:id])
    @wig.destroy
    redirect_to dashboard_path
  end


  private

  def wig_params
    params.require(:wig).permit(:title, :photo, :description, :price, :color, :size, :photo_cache)
  end
end
