class RoomschedulesController < ApplicationController

  def index
    @sessions = Session.all.order(name: :asc)
  end

  def list
    @session = Session.find(params[:session_id])
    @schedules = Schedule.where(session_id: params[:session_id]).order(role_id: :desc)
    @dates = Schedule.select(:start_time).where(session_id: params[:session_id]).group(:start_time).order(start_time: :asc)
  end

  private

end
