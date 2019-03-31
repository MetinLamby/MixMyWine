class WinetypesController < ApplicationController
  def index
    @winetypes = Winetype.all
  end
end
