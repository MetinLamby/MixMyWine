class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page_wines = Wine.all[0..5]
  end
end
