class DaronsController < ApplicationController

  def index
    @darons = Daron.all
  end

  def new
  end

  def create
  end
end
