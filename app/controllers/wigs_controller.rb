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

    @markers = @wigs.map do |wig|
      {
        lat: wig.latitude,
        lng: wig.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { wig: wig }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dc875ky15/image/upload/v1562854525/man-bald_1f468-200d-1f9b2_ghllek.png')
      }
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
       redirect_to dashboard_owner_path
    else
      render 'new'
    end
  end

  def edit
    @wig = Wig.find(params[:id])
  end

  def update
    @wig = Wig.find(params[:id])
    @wig.update(wig_params)
    redirect_to wig_path(params[:id])
  end

  def destroy
    @wig = Wig.find(params[:id])
    @wig.destroy
    redirect_to dashboard_path
  end


  private

  def wig_params

    params.require(:wig).permit(:title, :photo, :description, :price, :color, :size, :photo_cache, :address
    )

  end
end
