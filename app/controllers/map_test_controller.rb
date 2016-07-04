class MapTestController < ApplicationController

  def index
    @infos = Information.all
    render 'map_test', layout: false
  end
end
