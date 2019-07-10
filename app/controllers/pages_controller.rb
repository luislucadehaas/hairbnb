class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @wigs = Wig.first(8)
  end

  def dashboard
  end
end
