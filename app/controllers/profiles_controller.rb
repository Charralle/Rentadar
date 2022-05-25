class ProfilesController < ApplicationController
  def profile
    if user_signed_in?
      if current_user.daron
        @daron = current_user.daron
        @bookings = current_user.bookings
        @daron_bookings = Booking.where(daron: current_user.daron)
      else
        @bookings = current_user.bookings
        @info = User.where(user: current_user)
      end
    else
      redirect_to root_path
    end
  end
end
