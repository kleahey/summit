class RoomschedulesController < ApplicationController

  def index
    @rooms = Session.all.order(name: :asc)
  end

  def list
    @room = Session.find(params[:session_id])
    @roominfo = Schedule.where(session_id: params[:session_id])
  end

  private

end
