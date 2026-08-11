class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    Attendance.create(
      user: current_user,
      event_id: params[:event_id]
    )
    redirect_to event_path(params[:event_id])
  end

end
