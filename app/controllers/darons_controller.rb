class DaronsController < ApplicationController

  def index
    @darons = Daron.all
  end

  def new
    @daron = Daron.new
  end

  def create
    @daron = Daron.new(daron_params)
    if @daron.save
      redirect_to daron_path(@daron)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @daron = Daron.find(params[:id])
  end

  def update
    @daron = Daron.find(params[:id])
    @daron.update(daron_params)
    if @daron.update(daron_params)
      redirect_to daron_path(@daron)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @daron = Daron.find(params[:id])
    @daron.destroy!
    redirect_to lists_path, status: :see_other
  end

  private

  def list_params
    params.require(:daron).permit(:name, :profile_picture, :bio, :price)
  end
end
