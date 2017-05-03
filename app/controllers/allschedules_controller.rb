class AllschedulesController < ApplicationController

  def selectDate
    @dates = Schedule.where("extract(day from start_time) = ?", 8)
  end

  def monday
    @sessions = Session.where("extract(day from start_time) = ?", 8)
  end

end
