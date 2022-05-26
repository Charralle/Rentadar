class BookingsController < ApplicationController
  def index
    @bookings = Booking.all

  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @daron = Daron.find(params[:daron_id])
    @booking.user = current_user
    @booking.daron = @daron
    number_of_days = @booking.end_date - @booking.start_date
    @booking.price = @daron.price
    @booking.total_price = @daron.price.to_i * (number_of_days.to_i)
    @booking.location = @daron.zip_code
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      render :darons/show, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to user_path(@user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy!
    redirect_to dashboard_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
