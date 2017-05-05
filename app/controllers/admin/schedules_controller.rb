require "hipchataccess"

class Admin::SchedulesController < ApplicationController
  before_action :prepare_teammembers
  before_action :set_schedule, only: [:edit, :update, :destroy]
  before_action :prepare_locations
  before_action :prepare_roles
  before_action :prepare_sessions

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.where(teammember_id: params[:teammember_id]).order(start_time: :asc)
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    respond_to do |format|
      if @schedule.save
        Hip.notify_new(@schedule.teammember.name, @schedule.teammember.handle, @schedule.session.name, @schedule.role.name, @schedule.location.name, @schedule.start_time.strftime("%B %e %I:%M %P"))
        format.html { redirect_to admin_teammember_schedules_path, notice: 'Schedule was successfully created.' }
        format.json { render :show, status: :created, location: admin_teammember_schedules_path }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        Hip.notify_update(@schedule.teammember.name, @schedule.teammember.handle, @schedule.session.name, @schedule.role.name, @schedule.location.name, @schedule.start_time.strftime("%B %e %I:%M %P"))
        format.html { redirect_to admin_teammember_schedules_path, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_teammember_schedules_path }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      Hip.notify_delete(@schedule.teammember.name, @schedule.teammember.handle, @schedule.session.name, @schedule.role.name, @schedule.location.name, @schedule.start_time.strftime("%B %e %I:%M %P"))
      format.html { redirect_to admin_teammember_schedules_path, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def prepare_teammembers
      @teammembers = Teammember.all.order(name: :asc)
      @teammember = Teammember.find(params[:teammember_id])
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
