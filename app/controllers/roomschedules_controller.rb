class RoomschedulesController < ApplicationController

  def index
    @rooms = Session.all.order(name: :asc)
  end

end
