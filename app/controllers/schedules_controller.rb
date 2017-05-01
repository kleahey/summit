class SchedulesController < ApplicationController
  before_action :prepare_teammembers
  before_action :prepare_locations
  before_action :prepare_roles
  before_action :prepare_sessions

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.where(teammember_id: params[:teammember_id]).order(start_time: :asc)
  end

  def consultations
    @consultations = Schedule.where(session_id: 14).order(start_time: :asc)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def prepare_teammembers
      @teammembers = Teammember.all.order(name: :asc)
    end

    def prepare_locations
      @locations = Location.all.order(name: :asc)
    end

    def prepare_roles
      @roles = Role.all.order(name: :asc)
    end

    def prepare_sessions
      @sessions = Session.all.order(name: :asc)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:start_time, :end_time, :teammember_id, :location_id, :role_id, :session_id)
    end
end
