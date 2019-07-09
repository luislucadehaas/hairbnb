class WigsController < ApplicationController
  def new
    @wig = Wig.new
  end

  def create
    @Wig = Wig.new(wig_params)
    if @wig.save
      redirect_to wig_path(@wig)
    else
      render 'new'
    end
  end

  private

  def wig_params
    params.require(:wig).permit(:title, :photo, :description, :price, :color, :size)
  end
end
