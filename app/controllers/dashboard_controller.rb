class DashboardController < ApplicationController

  def show
    if current_user.daron&.exist?
      @bookings = current_user.bookings
      @daron_bookings = Booking.where(daron: current_user.daron)
    else
      @bookings = current_user.bookings
      @info = User.where(user: current_user)
    end
  end
end
