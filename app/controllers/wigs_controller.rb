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


private
  def wig_params
    params.require(:wig).permit(:title, :description, :price, :color, :size)
  end
end
